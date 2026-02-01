# Workflow Management & Recommendation System POC

This project demonstrates a workflow management application data set using a relational model approach and serves as a Proof of Concept (POC) for a recommendation system.

## Overview

The system uses a relational database approach with separate definition models for workflows, modules, tasks, and task dependencies. This allows for flexible reuse and composition of workflow components.

## Technology Stack

- **Frontend**: [Astro](https://astro.build) with React components
- **Backend**: [Supabase](https://supabase.com) (PostgreSQL database with REST API)
- **Deployment**: GitHub Pages with GitHub Actions
- **Styling**: CSS (scoped styles in components)
- **Language**: TypeScript

## Architecture

### Definition Models

The system separates workflow definitions into four related entities:

1. **WorkflowDefinition** - High-level workflow metadata
   - id, name, description, version, createdAt

2. **ModuleDefinition** - Modules that belong to workflows
   - id, workflowDefinitionId, name, description

3. **TaskDefinition** - Tasks that belong to modules
   - id, moduleDefinitionId, name, description

4. **TaskDependencyDefinition** - Dependencies between tasks
   - id, taskDefinitionId, dependsOnTaskDefinitionId

### Instance Models

From these definitions, instance models are created for actual workflow executions.

## Documentation

- **[MODELS.md](.github/copilot/MODELS.md)** - Complete data models for all entities
- **[SETUP_GUIDE.md](SETUP_GUIDE.md)** - Step-by-step setup instructions
- **[frontend/README.md](frontend/README.md)** - Frontend documentation
- **[supabase/README.md](supabase/README.md)** - Database setup instructions

## Mock Data Files

### Definition Models
- **workflow-definitions.json** - Workflow definitions
- **module-definitions.json** - Module definitions with workflow references
- **task-definitions.json** - Task definitions with module references
- **task-dependency-definitions.json** - Task dependency definitions

### Instance Models
- **workflow-instances.json** - Actual workflow executions for clients (with embedded task instances)

### Supporting Data
- **users.json** - User records
- **teams.json** - Team records with members
- **clients.json** - Client records

## Key Features

- **Relational Model**: Normalized database design with separate entities
- **Reusability**: Modules and tasks can be reused across workflows
- **Flexible Dependencies**: Explicit task dependency model
- **Versioning**: Workflows have version tracking
- **Team Collaboration**: Assign tasks to team members and track progress
- **Status Tracking**: Monitor workflow and task statuses in real-time
- **Recommendation System**: POC for intelligent task and resource recommendations
- **Web Application**: Astro + React frontend with Supabase backend
- **GitHub Pages Deployment**: Automatic deployment via GitHub Actions
- **No Authentication Required**: Public read-only access to workflow data

## Live Application

The application is deployed to GitHub Pages and can be accessed at:
**https://balazs-gaspar.github.io/workflow-play/**

The frontend is built with Astro and React, using Supabase as the backend database.

## Project Structure

```
workflow-play/
├── frontend/              # Astro + React frontend application
│   ├── src/
│   │   ├── components/   # React components
│   │   ├── layouts/      # Astro layouts
│   │   ├── lib/          # Supabase client and utilities
│   │   └── pages/        # Page routes
│   └── README.md         # Frontend documentation
├── supabase/             # Database schema and seed data
│   ├── schema.sql        # Database table definitions
│   ├── seed.sql          # Sample data
│   └── README.md         # Database setup instructions
├── *.json                # Original mock data files
└── .github/
    └── workflows/
        └── deploy.yml    # GitHub Pages deployment workflow
```

## Getting Started

### Option 1: View the Live Application

Visit the deployed application at https://balazs-gaspar.github.io/workflow-play/

### Option 2: Run Locally

1. **Review the Data Models**
   - See **[MODELS.md](.github/copilot/MODELS.md)** for complete data structure documentation

2. **Set Up Supabase Database**
   - Follow instructions in **[supabase/README.md](supabase/README.md)**
   - Create a Supabase project
   - Run the schema.sql to create tables
   - Run the seed.sql to populate with sample data

3. **Run the Frontend**
   - Follow instructions in **[frontend/README.md](frontend/README.md)**
   - Install dependencies: `cd frontend && npm install`
   - Configure environment variables (copy `.env.example` to `.env`)
   - Start dev server: `npm run dev`

### Option 3: Explore the Data Files

1. Review **[MODELS.md](.github/copilot/MODELS.md)** to understand the data structure
2. Explore the definition files to see how workflows, modules, and tasks are defined
3. Review workflow-instances.json to see how workflows are executed for specific clients
