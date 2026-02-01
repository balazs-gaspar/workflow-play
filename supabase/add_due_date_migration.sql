-- Migration: Add due_date field to task_instances table
-- This script adds the due_date column and updates existing records with sample dates

-- Add the due_date column
ALTER TABLE task_instances ADD COLUMN IF NOT EXISTS due_date TIMESTAMP WITH TIME ZONE;

-- Create index for better query performance
CREATE INDEX IF NOT EXISTS idx_task_instances_due_date ON task_instances(due_date);

-- Update existing task instances with due dates based on their current timestamps
-- Completed tasks: due_date slightly after completion
-- In-progress tasks: due_date in the near future
-- New/pending tasks: due_date further in the future

UPDATE task_instances
SET due_date = CASE
  WHEN status = 'completed' AND completed_at IS NOT NULL THEN completed_at + INTERVAL '1 hour'
  WHEN status = 'in_progress' AND started_at IS NOT NULL THEN started_at + INTERVAL '3 days'
  WHEN status = 'pending' THEN created_at + INTERVAL '5 days'
  WHEN status = 'new' THEN created_at + INTERVAL '7 days'
  ELSE created_at + INTERVAL '7 days'
END
WHERE due_date IS NULL;

-- Optionally, create some overdue tasks for testing (tasks that should have been completed)
-- Update a few in_progress tasks to have overdue dates
UPDATE task_instances
SET due_date = NOW() - INTERVAL '2 days'
WHERE status IN ('in_progress', 'pending', 'new')
  AND id IN (
    SELECT id FROM task_instances 
    WHERE status IN ('in_progress', 'pending', 'new')
    LIMIT 5
  );

-- Verify the changes
SELECT 
  status,
  COUNT(*) as total,
  COUNT(due_date) as with_due_date,
  COUNT(CASE WHEN due_date < NOW() AND status NOT IN ('completed', 'cancelled') THEN 1 END) as overdue
FROM task_instances
GROUP BY status
ORDER BY status;
