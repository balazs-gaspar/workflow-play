# Data Models

This document defines the core data models for the workflow management system.

The system separates **definitions** (reusable templates) from **instances** (actual executions).

## Task Definition Model

A task definition is a reusable template that describes a type of work.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the task definition |
| `name` | String | Descriptive name of the task |
| `description` | String | Detailed description of the task |
| `estimatedHours` | Number | Estimated time to complete in hours |
| `requiredSkills` | Array | List of skills required to complete this task |
| `category` | String | Category of the task (e.g., "Design", "Development", "Testing") |
| `createdAt` | DateTime | Timestamp when the task definition was created |
| `updatedAt` | DateTime | Timestamp when the task definition was last updated |

## Task Instance Model

A task instance represents an actual execution of a task definition within a workflow. Task instances are embedded within workflow instances.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the task instance |
| `taskDefinitionId` | Reference | Reference to the task definition |
| `status` | Enum | Current status: `pending`, `new`, `in progress`, `completed`, `cancelled` |
| `owner` | Reference | Reference to the user assigned to complete the task |
| `team` | Reference | Reference to the team responsible for the task |
| `priority` | Enum | Task priority: `low`, `medium`, `high`, `critical` |
| `actualHours` | Number | Actual time spent on the task |
| `createdAt` | DateTime | Timestamp when the task instance was created |
| `updatedAt` | DateTime | Timestamp when the task instance was last updated |
| `startedAt` | DateTime | Timestamp when work started (optional) |
| `completedAt` | DateTime | Timestamp when the task was completed (optional) |

### Status Flow

```
pending → new → in progress → completed
            ↓         ↓
            └─→ cancelled ←─┘
```

### Example Structure

```json
{
  "id": "task-inst-001",
  "taskDefinitionId": "task-def-001",
  "status": "in progress",
  "owner": {
    "id": "user-002",
    "name": "Jane Smith"
  },
  "team": {
    "id": "team-001",
    "name": "Development Team A"
  },
  "priority": "high",
  "actualHours": 5,
  "createdAt": "2026-01-15T09:00:00Z",
  "updatedAt": "2026-01-31T14:20:00Z",
  "startedAt": "2026-01-15T10:00:00Z",
  "completedAt": null
}
```

## Workflow Definition Model

A workflow definition is a reusable template that describes a complete work process.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the workflow definition |
| `name` | String | Name of the workflow (e.g., "Dashboard Design Workflow") |
| `description` | String | Description of the workflow's purpose |
| `taskDefinitions` | Array | List of task definition IDs that are part of this workflow |
| `defaultDependencies` | Object | Default dependency mapping between task definitions |
| `estimatedTotalHours` | Number | Sum of estimated hours for all tasks |
| `createdAt` | DateTime | Timestamp when the workflow definition was created |
| `updatedAt` | DateTime | Timestamp when the workflow definition was last updated |

### Example Structure

```json
{
  "id": "wf-def-001",
  "name": "Dashboard Design Workflow",
  "description": "Complete workflow for designing a dashboard interface",
  "taskDefinitions": ["task-def-001", "task-def-002", "task-def-003"],
  "defaultDependencies": {
    "task-def-003": ["task-def-001"]
  },
  "estimatedTotalHours": 24,
  "category": "Web Development",
  "createdAt": "2026-01-01T10:00:00Z",
  "updatedAt": "2026-01-01T10:00:00Z"
}
```

## Workflow Instance Model

A workflow instance represents an actual execution of a workflow definition for a specific client.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the workflow instance |
| `workflowDefinitionId` | Reference | Reference to the workflow definition |
| `status` | Enum | Current status: `new`, `in progress`, `completed`, `cancelled` |
| `client` | Reference | Reference to the client for whom the workflow is being executed |
| `team` | Reference | Reference to the team responsible for the workflow |
| `owner` | Reference | Reference to the user who owns/manages the workflow |
| `taskInstances` | Array | Array of task instance objects that belong to this workflow |
| `dependencies` | Object | Dependency mapping between task instances in this workflow |
| `createdAt` | DateTime | Timestamp when the workflow instance was created |
| `updatedAt` | DateTime | Timestamp when the workflow instance was last updated |
| `startedAt` | DateTime | Timestamp when the workflow started (optional) |
| `completedAt` | DateTime | Timestamp when the workflow was completed (optional) |

### Status Flow

```
new → in progress → completed
  ↓         ↓
  └─→ cancelled ←─┘
```

### Example Structure

```json
{
  "id": "wf-inst-001",
  "workflowDefinitionId": "wf-def-001",
  "status": "in progress",
  "client": {
    "id": "client-001",
    "name": "Acme Corporation"
  },
  "team": {
    "id": "team-001",
    "name": "Development Team A"
  },
  "owner": {
    "id": "user-005",
    "name": "David Brown"
  },
  "taskInstances": [
    {
      "id": "task-inst-001",
      "taskDefinitionId": "task-def-001",
      "status": "completed",
      "owner": {
        "id": "user-002",
        "name": "Jane Smith"
      },
      "team": {
        "id": "team-001",
        "name": "Development Team A"
      },
      "priority": "high",
      "actualHours": 7,
      "createdAt": "2026-01-15T09:00:00Z",
      "updatedAt": "2026-01-17T16:00:00Z",
      "startedAt": "2026-01-15T10:00:00Z",
      "completedAt": "2026-01-17T16:00:00Z"
    },
    {
      "id": "task-inst-002",
      "taskDefinitionId": "task-def-002",
      "status": "in progress",
      "owner": {
        "id": "user-001",
        "name": "John Doe"
      },
      "team": {
        "id": "team-001",
        "name": "Development Team A"
      },
      "priority": "high",
      "actualHours": 3,
      "createdAt": "2026-01-16T09:00:00Z",
      "updatedAt": "2026-01-31T15:30:00Z",
      "startedAt": "2026-01-16T10:00:00Z",
      "completedAt": null
    }
  ],
  "dependencies": {
    "task-inst-002": ["task-inst-001"]
  },
  "createdAt": "2026-01-15T10:00:00Z",
  "updatedAt": "2026-01-31T15:30:00Z",
  "startedAt": "2026-01-15T10:00:00Z",
  "completedAt": null
}
```

## Supporting Models

### Client Model

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier |
| `name` | String | Client name |
| `contactEmail` | String | Primary contact email |
| `organization` | String | Organization name (optional) |

### Team Model

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier |
| `name` | String | Team name |
| `members` | Array | List of user references |

### User Model

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier |
| `name` | String | User's full name |
| `email` | String | User's email address |
| `role` | String | User's role in the organization |

## Relationships

### Definition Level
- A **Workflow Definition** references multiple **Task Definitions**
- **Task Definitions** are reusable across multiple workflow definitions

### Instance Level
- A **Workflow Instance** is created from a **Workflow Definition**
- A **Workflow Instance** belongs to one **Client**
- A **Workflow Instance** is managed by one **Team**
- A **Workflow Instance** has one **Owner** (User)
- A **Workflow Instance** contains multiple **Task Instances** (embedded)
- A **Workflow Instance** defines **Dependencies** between Task Instances
- A **Task Instance** is created from a **Task Definition**
- A **Task Instance** is embedded within one **Workflow Instance**
- A **Task Instance** is assigned to one **User** (owner)
- A **Task Instance** belongs to one **Team**
- A **Team** contains multiple **Users** (members)

## Database Considerations

### Tables/Collections

1. **task_definitions** - Reusable task templates
2. **workflow_definitions** - Reusable workflow templates
3. **workflow_instances** - Actual workflow executions (with embedded task instances)
4. **users** - User records
5. **teams** - Team records
6. **clients** - Client records

### Indexing

For optimal query performance, consider indexing:
- **workflow_definitions**: `name`
- **workflow_instances**: `workflowDefinitionId`, `status`, `client.id`, `team.id`, `owner.id`, `taskInstances.status`, `taskInstances.owner.id`
- **task_definitions**: `category`, `requiredSkills`
- Composite indexes: `(status, updatedAt)`, `(team.id, status)`

### Data Integrity

- Ensure referential integrity for all references
- Validate status transitions
- Prevent circular dependencies in workflow instance dependency mappings
- Cascade updates when users/teams are modified
- Ensure task instances reference valid task definitions
- Ensure workflow instances reference valid workflow definitions
