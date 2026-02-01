-- Workflow Management System Database Schema
-- This file contains the SQL schema for all tables in the workflow management system

-- Create users table
CREATE TABLE IF NOT EXISTS users (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL UNIQUE,
  role TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create teams table
CREATE TABLE IF NOT EXISTS teams (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  members TEXT[] NOT NULL DEFAULT '{}',
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create clients table
CREATE TABLE IF NOT EXISTS clients (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  contact_email TEXT,
  organization TEXT,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create workflow_definitions table
CREATE TABLE IF NOT EXISTS workflow_definitions (
  id TEXT PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  version TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL
);

-- Create module_definitions table
CREATE TABLE IF NOT EXISTS module_definitions (
  id TEXT PRIMARY KEY,
  workflow_definition_id TEXT NOT NULL REFERENCES workflow_definitions(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create task_definitions table
CREATE TABLE IF NOT EXISTS task_definitions (
  id TEXT PRIMARY KEY,
  module_definition_id TEXT NOT NULL REFERENCES module_definitions(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create task_dependency_definitions table
CREATE TABLE IF NOT EXISTS task_dependency_definitions (
  id TEXT PRIMARY KEY,
  task_definition_id TEXT NOT NULL REFERENCES task_definitions(id) ON DELETE CASCADE,
  depends_on_task_definition_id TEXT NOT NULL REFERENCES task_definitions(id) ON DELETE CASCADE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT no_self_dependency CHECK (task_definition_id != depends_on_task_definition_id)
);

-- Create workflow_instances table
CREATE TABLE IF NOT EXISTS workflow_instances (
  id TEXT PRIMARY KEY,
  workflow_definition_id TEXT NOT NULL REFERENCES workflow_definitions(id),
  status TEXT NOT NULL CHECK (status IN ('new', 'in_progress', 'completed', 'cancelled')),
  client JSONB NOT NULL,
  team JSONB NOT NULL,
  owner JSONB NOT NULL,
  created_at TIMESTAMP WITH TIME ZONE NOT NULL,
  updated_at TIMESTAMP WITH TIME ZONE NOT NULL,
  started_at TIMESTAMP WITH TIME ZONE,
  completed_at TIMESTAMP WITH TIME ZONE
);

-- Create module_instances table
CREATE TABLE IF NOT EXISTS module_instances (
  id TEXT PRIMARY KEY,
  module_definition_id TEXT NOT NULL REFERENCES module_definitions(id) ON DELETE CASCADE,
  workflow_instance_id TEXT NOT NULL REFERENCES workflow_instances(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK (status IN ('new', 'in_progress', 'completed', 'cancelled')),
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  started_at TIMESTAMP WITH TIME ZONE,
  completed_at TIMESTAMP WITH TIME ZONE
);

-- Create task_instances table
CREATE TABLE IF NOT EXISTS task_instances (
  id TEXT PRIMARY KEY,
  task_definition_id TEXT NOT NULL REFERENCES task_definitions(id) ON DELETE CASCADE,
  module_instance_id TEXT NOT NULL REFERENCES module_instances(id) ON DELETE CASCADE,
  workflow_instance_id TEXT NOT NULL REFERENCES workflow_instances(id) ON DELETE CASCADE,
  status TEXT NOT NULL CHECK (status IN ('new', 'pending', 'in_progress', 'completed', 'cancelled')),
  owner JSONB,
  team JSONB NOT NULL,
  due_date TIMESTAMP WITH TIME ZONE,
  started_at TIMESTAMP WITH TIME ZONE,
  completed_at TIMESTAMP WITH TIME ZONE,
  created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better query performance
CREATE INDEX IF NOT EXISTS idx_module_definitions_workflow_id ON module_definitions(workflow_definition_id);
CREATE INDEX IF NOT EXISTS idx_task_definitions_module_id ON task_definitions(module_definition_id);
CREATE INDEX IF NOT EXISTS idx_task_dependency_task_id ON task_dependency_definitions(task_definition_id);
CREATE INDEX IF NOT EXISTS idx_task_dependency_depends_on_id ON task_dependency_definitions(depends_on_task_definition_id);
CREATE INDEX IF NOT EXISTS idx_workflow_instances_workflow_id ON workflow_instances(workflow_definition_id);
CREATE INDEX IF NOT EXISTS idx_workflow_instances_status ON workflow_instances(status);
CREATE INDEX IF NOT EXISTS idx_workflow_instances_client ON workflow_instances USING GIN (client);
CREATE INDEX IF NOT EXISTS idx_workflow_instances_team ON workflow_instances USING GIN (team);
CREATE INDEX IF NOT EXISTS idx_workflow_instances_owner ON workflow_instances USING GIN (owner);
CREATE INDEX IF NOT EXISTS idx_module_instances_module_definition_id ON module_instances(module_definition_id);
CREATE INDEX IF NOT EXISTS idx_module_instances_workflow_instance_id ON module_instances(workflow_instance_id);
CREATE INDEX IF NOT EXISTS idx_module_instances_status ON module_instances(status);
CREATE INDEX IF NOT EXISTS idx_task_instances_task_definition_id ON task_instances(task_definition_id);
CREATE INDEX IF NOT EXISTS idx_task_instances_module_instance_id ON task_instances(module_instance_id);
CREATE INDEX IF NOT EXISTS idx_task_instances_workflow_instance_id ON task_instances(workflow_instance_id);
CREATE INDEX IF NOT EXISTS idx_task_instances_status ON task_instances(status);
CREATE INDEX IF NOT EXISTS idx_task_instances_owner ON task_instances USING GIN (owner);
CREATE INDEX IF NOT EXISTS idx_task_instances_team ON task_instances USING GIN (team);
CREATE INDEX IF NOT EXISTS idx_task_instances_due_date ON task_instances(due_date);

-- Enable Row Level Security (RLS) for public read access
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE teams ENABLE ROW LEVEL SECURITY;
ALTER TABLE clients ENABLE ROW LEVEL SECURITY;
ALTER TABLE workflow_definitions ENABLE ROW LEVEL SECURITY;
ALTER TABLE module_definitions ENABLE ROW LEVEL SECURITY;
ALTER TABLE task_definitions ENABLE ROW LEVEL SECURITY;
ALTER TABLE task_dependency_definitions ENABLE ROW LEVEL SECURITY;
ALTER TABLE workflow_instances ENABLE ROW LEVEL SECURITY;
ALTER TABLE module_instances ENABLE ROW LEVEL SECURITY;
ALTER TABLE task_instances ENABLE ROW LEVEL SECURITY;

-- Create policies for public read access (no authentication required)
CREATE POLICY "Allow public read access on users" ON users FOR SELECT USING (true);
CREATE POLICY "Allow public read access on teams" ON teams FOR SELECT USING (true);
CREATE POLICY "Allow public read access on clients" ON clients FOR SELECT USING (true);
CREATE POLICY "Allow public read access on workflow_definitions" ON workflow_definitions FOR SELECT USING (true);
CREATE POLICY "Allow public read access on module_definitions" ON module_definitions FOR SELECT USING (true);
CREATE POLICY "Allow public read access on task_definitions" ON task_definitions FOR SELECT USING (true);
CREATE POLICY "Allow public read access on task_dependency_definitions" ON task_dependency_definitions FOR SELECT USING (true);
CREATE POLICY "Allow public read access on workflow_instances" ON workflow_instances FOR SELECT USING (true);
CREATE POLICY "Allow public read access on module_instances" ON module_instances FOR SELECT USING (true);
CREATE POLICY "Allow public read access on task_instances" ON task_instances FOR SELECT USING (true);
