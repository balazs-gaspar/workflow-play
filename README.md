# Workflow Management & Recommendation System POC

This project demonstrates a simplified workflow management application data set and serves as a Proof of Concept (POC) for a recommendation system.

## Overview

The system uses a simplified single-model approach where each workflow is defined in its own file with all its modules and tasks nested within it.

## Architecture

### Workflow Model
Each workflow definition contains:
- **id**: Unique identifier
- **name**: Workflow name
- **description**: Workflow description
- **modules**: Array of modules, each containing:
  - **id**: Module identifier
  - **name**: Module name
  - **tasks**: Array of tasks, each containing:
    - **id**: Task identifier
    - **name**: Task name
    - **team**: Team responsible for the task
    - **duration**: Estimated duration in days
    - **dependencies**: Array of task IDs that must be completed first

## Documentation

- **[MODELS.md](.github/copilot/MODELS.md)** - Complete data models for all entities

## Mock Data Files

### Workflow Definitions (file by file)
- **wf-def-001.json** - Dashboard Design Workflow
- **wf-def-003.json** - Quick Deployment Workflow
- **wf-def-004.json** - Planning Workflow

### Instances (Executions)
- **workflow-instances.json** - Actual workflow executions for clients (with embedded task instances)

### Supporting Data
- **users.json** - User records
- **teams.json** - Team records with members
- **clients.json** - Client records

## Key Features

- **Simplified Model**: Single workflow model with nested modules and tasks
- **File-by-File Definitions**: Each workflow type is defined in its own JSON file
- **Embedded Structure**: Tasks are nested within modules within workflows
- **Dependency Management**: Manage task dependencies at the task level
- **Team Collaboration**: Assign tasks to team members and track progress
- **Status Tracking**: Monitor workflow and task statuses in real-time
- **Recommendation System**: POC for intelligent task and resource recommendations

## Getting Started

1. Review **[MODELS.md](.github/copilot/MODELS.md)** to understand the data structure
2. Explore the workflow definition files (wf-def-*.json) to see the simplified structure
3. Review workflow-instances.json to see how workflows are executed for specific clients
