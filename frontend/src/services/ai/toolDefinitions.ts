import type { Tool } from '../../lib/gemini';

export const AVAILABLE_TOOLS: Tool[] = [
  // User and Team Tools
  {
    name: 'GET_CURRENT_USER',
    description: 'Get information about the current logged-in user, including their team',
    parameters: {
      type: 'object',
      properties: {},
    },
  },
  {
    name: 'GET_USER_BY_ID',
    description: 'Get a single user by their ID',
    parameters: {
      type: 'object',
      properties: {
        userId: {
          type: 'string',
          description: 'The ID of the user',
        },
      },
      required: ['userId'],
    },
  },
  {
    name: 'GET_TEAM_BY_ID',
    description: 'Get a single team by ID with member information',
    parameters: {
      type: 'object',
      properties: {
        teamId: {
          type: 'string',
          description: 'The ID of the team',
        },
      },
      required: ['teamId'],
    },
  },
  {
    name: 'GET_TEAM_MEMBERS',
    description: 'Get all users who are members of a specific team',
    parameters: {
      type: 'object',
      properties: {
        teamId: {
          type: 'string',
          description: 'The ID of the team',
        },
      },
      required: ['teamId'],
    },
  },

  // Task Tools
  {
    name: 'GET_TASKS',
    description: 'Get task instances with optional filters for status, user, team, workflow, and due dates',
    parameters: {
      type: 'object',
      properties: {
        status: {
          type: 'string',
          description: 'Filter by task status: new, pending, in_progress, completed, cancelled (comma-separated for multiple)',
        },
        userId: {
          type: 'string',
          description: 'Filter tasks assigned to a specific user',
        },
        teamId: {
          type: 'string',
          description: 'Filter tasks assigned to a specific team',
        },
        workflowId: {
          type: 'string',
          description: 'Filter tasks belonging to a specific workflow instance',
        },
        dueBefore: {
          type: 'string',
          description: 'ISO date string - get tasks due before this date',
        },
        dueAfter: {
          type: 'string',
          description: 'ISO date string - get tasks due after this date',
        },
        limit: {
          type: 'number',
          description: 'Maximum number of tasks to return',
        },
      },
    },
  },
  {
    name: 'COUNT_TASKS',
    description: 'Count tasks matching specific criteria without returning full data. Can group by status, user, team, or workflow',
    parameters: {
      type: 'object',
      properties: {
        status: {
          type: 'string',
          description: 'Filter by task status (comma-separated for multiple)',
        },
        userId: {
          type: 'string',
          description: 'Filter by user ID',
        },
        teamId: {
          type: 'string',
          description: 'Filter by team ID',
        },
        groupBy: {
          type: 'string',
          description: 'Group counts by: status, user, team, or workflow',
        },
      },
    },
  },
  {
    name: 'GET_TASK_DEPENDENCIES',
    description: 'Get dependency information for specific task definitions',
    parameters: {
      type: 'object',
      properties: {
        taskDefinitionIds: {
          type: 'string',
          description: 'Comma-separated list of task definition IDs to get dependencies for',
        },
      },
      required: ['taskDefinitionIds'],
    },
  },
  {
    name: 'CHECK_TASK_IS_BLOCKED',
    description: 'Check if a task instance is blocked by incomplete dependencies',
    parameters: {
      type: 'object',
      properties: {
        taskInstanceId: {
          type: 'string',
          description: 'The ID of the task instance to check',
        },
      },
      required: ['taskInstanceId'],
    },
  },

  // Workflow Tools
  {
    name: 'GET_WORKFLOWS',
    description: 'Get workflow instances with optional filters for status, client, team, and owner',
    parameters: {
      type: 'object',
      properties: {
        status: {
          type: 'string',
          description: 'Filter by workflow status: new, in_progress, completed, cancelled (comma-separated for multiple)',
        },
        clientId: {
          type: 'string',
          description: 'Filter workflows for a specific client',
        },
        teamId: {
          type: 'string',
          description: 'Filter workflows assigned to a specific team',
        },
        ownerId: {
          type: 'string',
          description: 'Filter workflows owned by a specific user',
        },
        limit: {
          type: 'number',
          description: 'Maximum number of workflows to return',
        },
      },
    },
  },
  {
    name: 'GET_WORKFLOW_TASKS',
    description: 'Get all tasks for a specific workflow instance with full details',
    parameters: {
      type: 'object',
      properties: {
        workflowId: {
          type: 'string',
          description: 'The ID of the workflow instance',
        },
      },
      required: ['workflowId'],
    },
  },

  // Analysis Tools
  {
    name: 'GET_OVERDUE_TASKS',
    description: 'Get tasks that are overdue or will be overdue within a specified number of days',
    parameters: {
      type: 'object',
      properties: {
        teamId: {
          type: 'string',
          description: 'Optional team ID to filter tasks by team',
        },
        userId: {
          type: 'string',
          description: 'Optional user ID to filter tasks by user',
        },
        daysAhead: {
          type: 'number',
          description: 'Number of days to look ahead for upcoming overdue tasks (default: 0 for already overdue)',
        },
        includeCompleted: {
          type: 'boolean',
          description: 'Whether to include completed tasks (default: false)',
        },
      },
    },
  },
  {
    name: 'FIND_BOTTLENECKS',
    description: 'Identify workflows or tasks that are blocking multiple other items',
    parameters: {
      type: 'object',
      properties: {
        scope: {
          type: 'string',
          description: 'Scope of analysis: user, team, or all',
        },
        scopeId: {
          type: 'string',
          description: 'ID of the user or team (required if scope is user or team)',
        },
      },
      required: ['scope'],
    },
  },
  {
    name: 'CALCULATE_TASK_PRIORITY',
    description: 'Calculate priority score for a task based on due date, dependencies, and impact',
    parameters: {
      type: 'object',
      properties: {
        taskInstanceId: {
          type: 'string',
          description: 'The ID of the task instance',
        },
        factors: {
          type: 'string',
          description: 'Priority factors to consider: due_date, blocking_count, team_capacity (comma-separated for multiple)',
        },
      },
      required: ['taskInstanceId'],
    },
  },
];
