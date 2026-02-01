# Workflow Management & Recommendation System POC

This project demonstrates a workflow management application data set using a relational model approach and serves as a Proof of Concept (POC) for a recommendation system.

## Overview

The system uses a relational database approach with separate definition models for workflows, modules, tasks, and task dependencies. This allows for flexible reuse and composition of workflow components.

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

## Getting Started

1. Review **[MODELS.md](.github/copilot/MODELS.md)** to understand the data structure
2. Explore the definition files to see how workflows, modules, and tasks are defined
3. Review workflow-instances.json to see how workflows are executed for specific clients
