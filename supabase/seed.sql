-- Workflow Management System Seed Data
-- This file contains sample data to populate the database

-- Insert users
INSERT INTO users (id, name, email, role) VALUES
  ('user-001', 'John Doe', 'john.doe@example.com', 'Senior Developer'),
  ('user-002', 'Jane Smith', 'jane.smith@example.com', 'UI/UX Designer'),
  ('user-003', 'Mike Johnson', 'mike.johnson@example.com', 'Backend Developer'),
  ('user-004', 'Sarah Williams', 'sarah.williams@example.com', 'QA Engineer'),
  ('user-005', 'David Brown', 'david.brown@example.com', 'Project Manager')
ON CONFLICT (id) DO NOTHING;

-- Insert teams
INSERT INTO teams (id, name, members) VALUES
  ('team-001', 'Development Team A', ARRAY['user-001', 'user-002', 'user-003']),
  ('team-002', 'QA Team', ARRAY['user-004']),
  ('team-003', 'Project Management', ARRAY['user-005'])
ON CONFLICT (id) DO NOTHING;

-- Insert clients
INSERT INTO clients (id, name, contact_email, organization) VALUES
  ('client-001', 'Acme Corporation', 'contact@acme.com', 'Acme Corp.'),
  ('client-002', 'TechStart Inc', 'hello@techstart.io', 'TechStart Innovations'),
  ('client-003', 'Global Solutions Ltd', 'info@globalsolutions.com', 'Global Solutions Limited')
ON CONFLICT (id) DO NOTHING;

-- Insert workflow definitions
INSERT INTO workflow_definitions (id, name, description, version, created_at) VALUES
  ('wf-def-001', 'Dashboard Design Workflow', 'Complete workflow for designing and implementing a dashboard interface', '1.0.0', '2026-01-01T10:00:00Z'),
  ('wf-def-003', 'Quick Deployment Workflow', 'Streamlined workflow for frontend implementation and deployment', '1.0.0', '2025-12-01T10:00:00Z'),
  ('wf-def-004', 'Planning Workflow', 'Initial planning and requirements gathering workflow', '1.0.0', '2026-01-30T09:00:00Z')
ON CONFLICT (id) DO NOTHING;

-- Insert module definitions
INSERT INTO module_definitions (id, workflow_definition_id, name, description) VALUES
  ('module-001', 'wf-def-001', 'Design', 'Design module for Dashboard Design Workflow'),
  ('module-002', 'wf-def-001', 'Research', 'Research module for Dashboard Design Workflow'),
  ('module-003', 'wf-def-001', 'Validation', 'Validation module for Dashboard Design Workflow'),
  ('module-004', 'wf-def-001', 'Development', 'Development module for Dashboard Design Workflow'),
  ('module-005', 'wf-def-001', 'Testing', 'Testing module for Dashboard Design Workflow'),
  ('module-004-003', 'wf-def-003', 'Development', 'Development module for Quick Deployment Workflow'),
  ('module-007', 'wf-def-003', 'Deployment', 'Deployment module for Quick Deployment Workflow'),
  ('module-006', 'wf-def-004', 'Planning', 'Planning module for Planning Workflow')
ON CONFLICT (id) DO NOTHING;

-- Insert task definitions
INSERT INTO task_definitions (id, module_definition_id, name, description) VALUES
  ('task-def-001', 'module-001', 'Create wireframes', 'Create wireframes task in Design module'),
  ('task-def-002', 'module-002', 'User research', 'User research task in Research module'),
  ('task-def-003', 'module-003', 'Design validation', 'Design validation task in Validation module'),
  ('task-def-006', 'module-004', 'Database schema design', 'Database schema design task in Development module'),
  ('task-def-004', 'module-004', 'Frontend implementation', 'Frontend implementation task in Development module'),
  ('task-def-005', 'module-004', 'Backend API development', 'Backend API development task in Development module'),
  ('task-def-007', 'module-005', 'Integration testing', 'Integration testing task in Testing module'),
  ('task-def-004-003', 'module-004-003', 'Frontend implementation', 'Frontend implementation task in Development module'),
  ('task-def-009', 'module-007', 'Production deployment', 'Production deployment task in Deployment module'),
  ('task-def-008', 'module-006', 'Requirements gathering', 'Requirements gathering task in Planning module')
ON CONFLICT (id) DO NOTHING;

-- Insert task dependency definitions
INSERT INTO task_dependency_definitions (id, task_definition_id, depends_on_task_definition_id) VALUES
  ('dep-001', 'task-def-003', 'task-def-001'),
  ('dep-002', 'task-def-004', 'task-def-001'),
  ('dep-003', 'task-def-005', 'task-def-006'),
  ('dep-004', 'task-def-007', 'task-def-004'),
  ('dep-005', 'task-def-007', 'task-def-005'),
  ('dep-006', 'task-def-009', 'task-def-004-003')
ON CONFLICT (id) DO NOTHING;

-- Insert workflow instances with embedded task instances
INSERT INTO workflow_instances (id, workflow_definition_id, status, client, team, owner, task_instances, created_at, updated_at, started_at, completed_at) VALUES
  (
    'wf-inst-001',
    'wf-def-001',
    'in progress',
    '{"id": "client-001", "name": "Acme Corporation"}'::jsonb,
    '{"id": "team-001", "name": "Development Team A"}'::jsonb,
    '{"id": "user-005", "name": "David Brown"}'::jsonb,
    '[
      {
        "id": "task-inst-001",
        "taskDefinitionId": "task-def-001",
        "status": "completed",
        "owner": {"id": "user-002", "name": "Jane Smith"},
        "team": {"id": "team-001", "name": "Development Team A"},
        "module": {"id": "module-001", "name": "Design"},
        "priority": "high",
        "actualHours": 7,
        "dependencies": [],
        "createdAt": "2026-01-15T09:00:00Z",
        "updatedAt": "2026-01-17T16:00:00Z",
        "startedAt": "2026-01-15T10:00:00Z",
        "completedAt": "2026-01-17T16:00:00Z"
      },
      {
        "id": "task-inst-002",
        "taskDefinitionId": "task-def-002",
        "status": "completed",
        "owner": {"id": "user-002", "name": "Jane Smith"},
        "team": {"id": "team-001", "name": "Development Team A"},
        "module": {"id": "module-002", "name": "Research"},
        "priority": "medium",
        "actualHours": 5,
        "dependencies": [],
        "createdAt": "2026-01-16T09:00:00Z",
        "updatedAt": "2026-01-18T15:00:00Z",
        "startedAt": "2026-01-16T10:00:00Z",
        "completedAt": "2026-01-18T15:00:00Z"
      },
      {
        "id": "task-inst-003",
        "taskDefinitionId": "task-def-003",
        "status": "in progress",
        "owner": {"id": "user-002", "name": "Jane Smith"},
        "team": {"id": "team-001", "name": "Development Team A"},
        "module": {"id": "module-003", "name": "Validation"},
        "priority": "high",
        "actualHours": 2,
        "dependencies": ["task-inst-001"],
        "createdAt": "2026-01-20T09:00:00Z",
        "updatedAt": "2026-01-31T14:20:00Z",
        "startedAt": "2026-01-20T10:00:00Z",
        "completedAt": null
      }
    ]'::jsonb,
    '2026-01-15T10:00:00Z',
    '2026-01-31T15:30:00Z',
    '2026-01-15T10:00:00Z',
    NULL
  ),
  (
    'wf-inst-002',
    'wf-def-003',
    'new',
    '{"id": "client-002", "name": "TechStart Inc"}'::jsonb,
    '{"id": "team-001", "name": "Development Team A"}'::jsonb,
    '{"id": "user-005", "name": "David Brown"}'::jsonb,
    '[
      {
        "id": "task-inst-004",
        "taskDefinitionId": "task-def-004-003",
        "status": "new",
        "owner": {"id": "user-001", "name": "John Doe"},
        "team": {"id": "team-001", "name": "Development Team A"},
        "module": {"id": "module-004-003", "name": "Development"},
        "priority": "high",
        "actualHours": 0,
        "dependencies": [],
        "createdAt": "2026-01-30T09:00:00Z",
        "updatedAt": "2026-01-30T09:00:00Z",
        "startedAt": null,
        "completedAt": null
      }
    ]'::jsonb,
    '2026-01-30T09:00:00Z',
    '2026-01-30T09:00:00Z',
    NULL,
    NULL
  )
ON CONFLICT (id) DO NOTHING;
