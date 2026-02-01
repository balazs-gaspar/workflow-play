# Supabase Setup Instructions

This directory contains the database schema and seed data for the Workflow Management System.

## Prerequisites

1. Create a Supabase account at [https://supabase.com](https://supabase.com)
2. Create a new project in Supabase

## Database Setup

### 1. Run the Schema

1. Go to your Supabase project dashboard
2. Navigate to the SQL Editor
3. Copy the contents of `schema.sql`
4. Paste and execute it in the SQL Editor

This will create all the necessary tables:
- `users`
- `teams`
- `clients`
- `workflow_definitions`
- `module_definitions`
- `task_definitions`
- `task_dependency_definitions`
- `workflow_instances`
- `module_instances`
- `task_instances`

### 2. Seed the Database

1. In the SQL Editor, create a new query
2. Copy the contents of `seed.sql`
3. Paste and execute it in the SQL Editor

This will populate the tables with sample data from the JSON files.

### 3. Configure Environment Variables

For local development, create a `.env` file in the `frontend` directory:

```env
PUBLIC_SUPABASE_URL=your_supabase_project_url
PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
```

You can find these values in your Supabase project settings:
- Go to Settings > API
- Copy the "Project URL" for `PUBLIC_SUPABASE_URL`
- Copy the "anon public" key for `PUBLIC_SUPABASE_ANON_KEY`

For GitHub Pages deployment, add these as repository secrets:
1. Go to your GitHub repository
2. Navigate to Settings > Secrets and variables > Actions
3. Add new repository secrets:
   - `PUBLIC_SUPABASE_URL`
   - `PUBLIC_SUPABASE_ANON_KEY`

## Row Level Security (RLS)

The schema includes Row Level Security policies that allow public read access to all tables. This means:
- No authentication is required to read data
- The anon key is safe to expose in the frontend code
- Data is read-only from the frontend (no write access)

If you need to add write capabilities later, you'll need to:
1. Update the RLS policies
2. Implement authentication
3. Add appropriate write policies based on user roles

## Tables Overview

### Definition Tables
- **workflow_definitions**: High-level workflow metadata
- **module_definitions**: Modules that belong to workflows
- **task_definitions**: Tasks that belong to modules
- **task_dependency_definitions**: Dependencies between tasks

### Instance Tables
- **workflow_instances**: Actual workflow executions (with embedded task instances)
- **module_instances**: Instances of modules within workflow executions
- **task_instances**: Individual task executions with status, owner, and team tracking

### Supporting Tables
- **users**: User records
- **teams**: Team records with member arrays
- **clients**: Client records

## Indexes

The schema includes optimized indexes for:
- Foreign key relationships
- Status filtering
- JSONB fields for nested queries
- Composite queries on status and dates

These indexes ensure good performance even as data grows.
