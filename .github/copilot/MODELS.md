# Data Models

This document defines the core data models for the workflow management system.

The system uses a simplified single-model approach where workflows are defined with nested modules and tasks.

## Workflow Model

A workflow represents a complete work process with nested modules and tasks.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the workflow |
| `name` | String | Name of the workflow (e.g., "Dashboard Design Workflow") |
| `description` | String | Description of the workflow's purpose |
| `modules` | Array | Array of module objects (see Module structure below) |

### Module Structure (nested within Workflow)

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the module |
| `name` | String | Name of the module (e.g., "Design", "Development", "Testing") |
| `tasks` | Array | Array of task objects (see Task structure below) |

### Task Structure (nested within Module)

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the task |
| `name` | String | Descriptive name of the task |
| `team` | String | Name of the team responsible for this task |
| `duration` | Number | Estimated duration in days |
| `dependencies` | Array | Array of task IDs that must be completed before this task can start |

### Example Structure

```json
{
  "id": "wf-def-001",
  "name": "Dashboard Design Workflow",
  "description": "Complete workflow for designing and implementing a dashboard interface",
  "modules": [
    {
      "id": "module-001",
      "name": "Design",
      "tasks": [
        {
          "id": "task-def-001",
          "name": "Create wireframes",
          "team": "Development Team A",
          "duration": 1,
          "dependencies": []
        }
      ]
    },
    {
      "id": "module-004",
      "name": "Development",
      "tasks": [
        {
          "id": "task-def-004",
          "name": "Frontend implementation",
          "team": "Development Team A",
          "duration": 2,
          "dependencies": ["task-def-001"]
        }
      ]
    }
  ]
}
```


## Task Instance Model

A task instance represents an actual execution of a task within a workflow. Task instances are embedded within workflow instances.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the task instance |
| `taskDefinitionId` | Reference | Reference to the task definition ID from the workflow model |
| `status` | Enum | Current status: `pending`, `new`, `in progress`, `completed`, `cancelled` |
| `owner` | Reference | Reference to the user assigned to complete the task |
| `team` | Reference | Reference to the team responsible for the task |
| `module` | Object | Module information containing id and name |
| `priority` | Enum | Task priority: `low`, `medium`, `high`, `critical` |
| `dependencies` | Array | List of task instance IDs that must be completed before this task can start |
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
  "module": {
    "id": "module-001",
    "name": "Design"
  },
  "priority": "high",
  "dependencies": [],
  "actualHours": 5,
  "createdAt": "2026-01-15T09:00:00Z",
  "updatedAt": "2026-01-31T14:20:00Z",
  "startedAt": "2026-01-15T10:00:00Z",
  "completedAt": null
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
      "dependencies": [],
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
      "dependencies": ["task-inst-001"],
      "actualHours": 3,
      "createdAt": "2026-01-16T09:00:00Z",
      "updatedAt": "2026-01-31T15:30:00Z",
      "startedAt": "2026-01-16T10:00:00Z",
      "completedAt": null
    }
  ],
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

### Workflow Model Structure
- A **Workflow** contains multiple **Modules**
- A **Module** contains multiple **Tasks**
- A **Task** can depend on other **Tasks** (within the same or different modules)

### Instance Level
- A **Workflow Instance** is created from a **Workflow** (defined in wf-def-*.json files)
- A **Workflow Instance** belongs to one **Client**
- A **Workflow Instance** is managed by one **Team**
- A **Workflow Instance** has one **Owner** (User)
- A **Workflow Instance** contains multiple **Task Instances** (embedded)
- A **Task Instance** references a **Task** from the Workflow model (via taskDefinitionId)
- A **Task Instance** is embedded within one **Workflow Instance**
- A **Task Instance** contains **Module** information (id and name)
- A **Task Instance** is assigned to one **User** (owner)
- A **Task Instance** belongs to one **Team**
- A **Task Instance** can have multiple **Dependencies** (other Task Instances)
- A **Team** contains multiple **Users** (members)

## Database Considerations

### Tables/Collections

1. **workflows** - Workflow definitions (stored as individual JSON files: wf-def-*.json)
2. **workflow_instances** - Actual workflow executions (with embedded task instances)
3. **users** - User records
4. **teams** - Team records
5. **clients** - Client records

### Indexing

For optimal query performance, consider indexing:
- **workflow_instances**: `workflowDefinitionId`, `status`, `client.id`, `team.id`, `owner.id`, `taskInstances.status`, `taskInstances.owner.id`, `taskInstances.module.id`, `taskInstances.dependencies`
- Composite indexes: `(status, updatedAt)`, `(team.id, status)`

### Data Integrity

- Ensure referential integrity for all references
- Validate status transitions
- Prevent circular dependencies in task instance dependency chains
- Cascade updates when users/teams are modified
- Ensure task instances reference valid task IDs from workflow definitions
