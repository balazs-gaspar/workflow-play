# Data Models

This document defines the core data models for the workflow management system.

## Workflow Model

A workflow represents a complete work process that includes multiple tasks organized into modules.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the workflow |
| `status` | Enum | Current status of the workflow: `new`, `in progress`, `completed`, `cancelled` |
| `client` | Reference | Reference to the client for whom the workflow is being executed |
| `team` | Reference | Reference to the team responsible for the workflow |
| `owner` | Reference | Reference to the user who owns/manages the workflow |
| `modules` | Array | Collection of modules, each containing related tasks |
| `createdAt` | DateTime | Timestamp when the workflow was created |
| `updatedAt` | DateTime | Timestamp when the workflow was last updated |

### Status Flow

```
new → in progress → completed
  ↓         ↓
  └─→ cancelled ←─┘
```

### Example Structure

```json
{
  "id": "wf-001",
  "status": "in progress",
  "client": {
    "id": "client-123",
    "name": "Acme Corporation"
  },
  "team": {
    "id": "team-456",
    "name": "Development Team A"
  },
  "owner": {
    "id": "user-789",
    "name": "John Doe"
  },
  "modules": [
    {
      "id": "module-001",
      "name": "Design Phase",
      "tasks": [...]
    }
  ],
  "createdAt": "2026-01-01T10:00:00Z",
  "updatedAt": "2026-01-31T15:30:00Z"
}
```

## Task Model

A task represents a single unit of work within a workflow module.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the task |
| `name` | String | Descriptive name of the task |
| `status` | Enum | Current status: `pending`, `new`, `in progress`, `completed`, `cancelled` |
| `assignedTo` | Reference | Reference to the user assigned to complete the task |
| `team` | Reference | Reference to the team responsible for the task |
| `dependencies` | Array | List of task IDs that must be completed before this task can start |
| `description` | String | Detailed description of the task (optional) |
| `estimatedHours` | Number | Estimated time to complete in hours (optional) |
| `actualHours` | Number | Actual time spent on the task (optional) |
| `priority` | Enum | Task priority: `low`, `medium`, `high`, `critical` (optional) |
| `createdAt` | DateTime | Timestamp when the task was created |
| `updatedAt` | DateTime | Timestamp when the task was last updated |
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
  "id": "task-001",
  "name": "Create wireframes for dashboard",
  "status": "in progress",
  "assignedTo": {
    "id": "user-101",
    "name": "Jane Smith"
  },
  "team": {
    "id": "team-456",
    "name": "Development Team A"
  },
  "dependencies": [],
  "description": "Design wireframes for the main dashboard interface",
  "estimatedHours": 8,
  "actualHours": 5,
  "priority": "high",
  "createdAt": "2026-01-15T09:00:00Z",
  "updatedAt": "2026-01-31T14:20:00Z",
  "completedAt": null
}
```

## Module Model

A module groups related tasks within a workflow.

### Attributes

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier for the module |
| `name` | String | Name of the module (e.g., "Design Phase", "Development Phase") |
| `description` | String | Description of the module's purpose (optional) |
| `tasks` | Array | Collection of tasks within this module |
| `order` | Number | Order of the module within the workflow (optional) |

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
| `capabilities` | Array | List of team skills/capabilities (optional) |

### User Model

| Attribute | Type | Description |
|-----------|------|-------------|
| `id` | UUID/String | Unique identifier |
| `name` | String | User's full name |
| `email` | String | User's email address |
| `role` | String | User's role in the organization |
| `skills` | Array | List of user skills (optional) |

## Relationships

- A **Workflow** belongs to one **Client**
- A **Workflow** is managed by one **Team**
- A **Workflow** has one **Owner** (User)
- A **Workflow** contains multiple **Modules**
- A **Module** contains multiple **Tasks**
- A **Task** is assigned to one **User**
- A **Task** belongs to one **Team**
- A **Task** can have multiple **Dependencies** (other Tasks)
- A **Team** contains multiple **Users** (members)

## Database Considerations

### Indexing

For optimal query performance, consider indexing:
- Workflow: `status`, `client.id`, `team.id`, `owner.id`
- Task: `status`, `assignedTo.id`, `team.id`, `dependencies`
- Composite indexes: `(status, updatedAt)`, `(team.id, status)`

### Data Integrity

- Ensure referential integrity for all references
- Validate status transitions
- Prevent circular dependencies in tasks
- Cascade updates when users/teams are modified
