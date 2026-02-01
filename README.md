# Workflow Management & Recommendation System POC

This project demonstrates workflow management application data set and serves as a Proof of Concept (POC) for a recommendation system.

## Overview

The system separates **definitions** (reusable templates) from **instances** (actual executions). This allows you to:
- Define reusable workflow and task templates
- Create multiple instances from the same template for different clients
- Track actual executions separately from templates

## Architecture

### Definitions (Templates)
- **Workflow Definitions**: Reusable workflow templates (e.g., "Dashboard Design Workflow")
- **Task Definitions**: Reusable task templates (e.g., "Create wireframes")

### Instances (Executions)
- **Workflow Instances**: Actual workflow executions for specific clients (with embedded task instances)
- **Task Instances**: Actual task executions embedded within workflow instances

## Documentation

- **[MODELS.md](.github/copilot/MODELS.md)** - Complete data models for all entities

## Mock Data Files

### Definitions (Templates)
- **workflow-definitions.json** - Reusable workflow templates
- **task-definitions.json** - Reusable task templates

### Instances (Executions)
- **workflow-instances.json** - Actual workflow executions for clients (with embedded task instances)

### Supporting Data
- **users.json** - User records
- **teams.json** - Team records with members
- **clients.json** - Client records

## Key Features

- **Template-Based Workflows**: Define workflows once, use many times
- **Task Reusability**: Reuse task definitions across multiple workflows
- **Embedded Task Instances**: Task instances are embedded within workflow instances for better data locality
- **Dependency Management**: Manage task dependencies at the workflow instance level
- **Team Collaboration**: Assign tasks to team members and track progress
- **Status Tracking**: Monitor workflow and task statuses in real-time
- **Recommendation System**: POC for intelligent task and resource recommendations

## Getting Started

1. Review **[MODELS.md](.github/copilot/MODELS.md)** to understand the data structure
2. Explore the mock data files to see examples of:
   - How workflow definitions reference task definitions
   - How workflow instances are created from definitions for specific clients
   - How task instances are embedded within workflow instances
   - How dependencies are managed at the workflow instance level
