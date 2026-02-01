-- Update task instances to have more varied statuses
-- Valid statuses: 'new', 'pending', 'in_progress', 'completed', 'cancelled'

-- Update some completed tasks to 'pending' status (tasks that are ready to start but haven't begun)
UPDATE task_instances
SET status = 'pending',
    started_at = NULL,
    completed_at = NULL
WHERE id IN (
  'task-inst-001-003-030',
  'task-inst-003-002-069',
  'task-inst-021-002-014',
  'task-inst-040-004-033',
  'task-inst-002-001-091'
);

-- Update some completed tasks to 'cancelled' status (tasks that were stopped/cancelled)
UPDATE task_instances
SET status = 'cancelled',
    completed_at = started_at + INTERVAL '2 hours'
WHERE id IN (
  'task-inst-005-001-003',
  'task-inst-016-003-072',
  'task-inst-034-003-075'
);

-- Update some completed tasks to 'in_progress' status (currently being worked on)
UPDATE task_instances
SET status = 'in_progress',
    completed_at = NULL
WHERE id IN (
  'task-inst-005-002-012',
  'task-inst-016-001-053',
  'task-inst-021-001-002',
  'task-inst-034-001-051',
  'task-inst-053-001-052',
  'task-inst-045-001-052'
);

-- Update some new tasks to 'pending' status
UPDATE task_instances
SET status = 'pending'
WHERE id IN (
  'task-inst-001-001-001',
  'task-inst-001-002-011'
)
AND status = 'new';

-- Add some completed tasks with different completion patterns
-- Some tasks completed quickly (same day)
UPDATE task_instances
SET started_at = '2026-01-20T09:00:00Z',
    completed_at = '2026-01-20T11:30:00Z'
WHERE id = 'task-inst-005-005-042';

-- Some tasks took longer (multiple days)
UPDATE task_instances
SET started_at = '2026-01-15T09:00:00Z',
    completed_at = '2026-01-18T17:00:00Z'
WHERE id = 'task-inst-013-001-091';

-- Some in-progress tasks started recently
UPDATE task_instances
SET status = 'in_progress',
    started_at = '2026-02-01T10:00:00Z',
    completed_at = NULL
WHERE id = 'task-inst-021-002-012';

-- Some pending tasks (assigned owner but not started)
UPDATE task_instances
SET status = 'pending',
    owner = '{"id": "user-029", "name": "Steven Hernandez"}'::jsonb,
    started_at = NULL,
    completed_at = NULL
WHERE id IN (
  'task-inst-040-004-033',
  'task-inst-002-001-091'
);

-- Set some tasks as cancelled with reason (via owner field showing who cancelled)
UPDATE task_instances
SET status = 'cancelled',
    owner = '{"id": "user-005", "name": "David Brown"}'::jsonb,
    started_at = '2025-12-02T09:00:00Z',
    completed_at = '2025-12-02T15:00:00Z'
WHERE id = 'task-inst-005-001-003';

-- Create a distribution summary (informational query)
SELECT 
  status,
  COUNT(*) as count,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) as percentage
FROM task_instances
GROUP BY status
ORDER BY count DESC;

-- Show sample of updated tasks by status
SELECT 
  id,
  status,
  COALESCE(owner->>'name', 'Unassigned') as owner_name,
  team->>'name' as team_name,
  started_at,
  completed_at
FROM task_instances
WHERE status IN ('pending', 'cancelled', 'in_progress', 'new')
ORDER BY status, started_at DESC NULLS LAST
LIMIT 20;
