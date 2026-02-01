import { supabase } from '../../lib/supabase';
import type { ToolCall, ToolResult } from '../../lib/gemini';

// This will be set by the useAIAssistant hook
let currentUser: { id: string; name: string; email: string; teamId?: string } | null = null;

export function setCurrentUser(user: typeof currentUser) {
  currentUser = user;
}

export async function executeTool(toolCall: ToolCall): Promise<ToolResult> {
  const { name, parameters } = toolCall;

  try {
    let result: any;

    switch (name) {
      // User and Team Tools
      case 'GET_CURRENT_USER': {
        if (!currentUser) {
          throw new Error('No user is currently logged in');
        }
        result = currentUser;
        break;
      }

      case 'GET_USER_BY_ID': {
        const { userId } = parameters;
        const { data, error } = await supabase
          .from('users')
          .select('*')
          .eq('id', userId)
          .single();

        if (error) throw error;
        result = data;
        break;
      }

      case 'GET_TEAM_BY_ID': {
        const { teamId } = parameters;
        const { data, error } = await supabase
          .from('teams')
          .select('*')
          .eq('id', teamId)
          .single();

        if (error) throw error;
        result = data;
        break;
      }

      case 'GET_TEAM_MEMBERS': {
        const { teamId } = parameters;
        const { data: team, error: teamError } = await supabase
          .from('teams')
          .select('members')
          .eq('id', teamId)
          .single();

        if (teamError) throw teamError;

        const { data: users, error: usersError } = await supabase
          .from('users')
          .select('*')
          .in('id', team.members);

        if (usersError) throw usersError;
        result = users;
        break;
      }

      // Task Tools
      case 'GET_TASKS': {
        const { status, userId, teamId, workflowId, dueBefore, dueAfter, limit } = parameters;
        
        let query = supabase
          .from('task_instances')
          .select(`
            *,
            task_definitions (name, description),
            workflow_instances (id, status, client),
            module_instances (module_definitions (name))
          `);

        if (status && status.length > 0) {
          query = query.in('status', status);
        }
        if (userId) {
          query = query.eq('owner->id', userId);
        }
        if (teamId) {
          query = query.eq('team->id', teamId);
        }
        if (workflowId) {
          query = query.eq('workflow_instance_id', workflowId);
        }
        if (dueBefore) {
          query = query.lte('due_date', dueBefore);
        }
        if (dueAfter) {
          query = query.gte('due_date', dueAfter);
        }
        if (limit) {
          query = query.limit(limit);
        }

        query = query.order('due_date', { ascending: true, nullsFirst: false });

        const { data, error } = await query;
        if (error) throw error;
        result = data;
        break;
      }

      case 'COUNT_TASKS': {
        const { status, userId, teamId, groupBy } = parameters;
        
        let query = supabase
          .from('task_instances')
          .select('id, status, owner, team, workflow_instance_id');

        if (status && status.length > 0) {
          query = query.in('status', status);
        }
        if (userId) {
          query = query.eq('owner->id', userId);
        }
        if (teamId) {
          query = query.eq('team->id', teamId);
        }

        const { data, error } = await query;
        if (error) throw error;

        if (groupBy) {
          const grouped = data?.reduce((acc: any, task: any) => {
            let key: string;
            switch (groupBy) {
              case 'status':
                key = task.status;
                break;
              case 'user':
                key = task.owner?.id || 'unassigned';
                break;
              case 'team':
                key = task.team?.id || 'unknown';
                break;
              case 'workflow':
                key = task.workflow_instance_id;
                break;
              default:
                key = 'all';
            }
            acc[key] = (acc[key] || 0) + 1;
            return acc;
          }, {});
          result = { total: data?.length || 0, grouped };
        } else {
          result = { total: data?.length || 0 };
        }
        break;
      }

      case 'GET_TASK_DEPENDENCIES': {
        const { taskDefinitionIds } = parameters;
        const { data, error } = await supabase
          .from('task_dependency_definitions')
          .select(`
            *,
            task_definitions!task_dependency_definitions_task_definition_id_fkey (id, name),
            depends_on:task_definitions!task_dependency_definitions_depends_on_task_definition_id_fkey (id, name)
          `)
          .in('task_definition_id', taskDefinitionIds);

        if (error) throw error;
        result = data;
        break;
      }

      case 'CHECK_TASK_IS_BLOCKED': {
        const { taskInstanceId } = parameters;
        
        // Get the task instance
        const { data: task, error: taskError } = await supabase
          .from('task_instances')
          .select(`
            *,
            task_definitions (id)
          `)
          .eq('id', taskInstanceId)
          .single();

        if (taskError) throw taskError;

        // Get dependencies for this task definition
        const { data: dependencies, error: depError } = await supabase
          .from('task_dependency_definitions')
          .select('depends_on_task_definition_id')
          .eq('task_definition_id', task.task_definitions.id);

        if (depError) throw depError;

        if (!dependencies || dependencies.length === 0) {
          result = { isBlocked: false, blockingTasks: [] };
          break;
        }

        // Get instances of the dependency tasks in the same workflow
        const dependencyTaskDefIds = dependencies.map(d => d.depends_on_task_definition_id);
        const { data: blockingTasks, error: blockingError } = await supabase
          .from('task_instances')
          .select(`
            id,
            status,
            task_definitions (id, name)
          `)
          .eq('workflow_instance_id', task.workflow_instance_id)
          .in('task_definition_id', dependencyTaskDefIds)
          .not('status', 'eq', 'completed');

        if (blockingError) throw blockingError;

        result = {
          isBlocked: blockingTasks && blockingTasks.length > 0,
          blockingTasks: blockingTasks || [],
        };
        break;
      }

      // Workflow Tools
      case 'GET_WORKFLOWS': {
        const { status, clientId, teamId, ownerId, limit } = parameters;
        
        let query = supabase
          .from('workflow_instances')
          .select(`
            *,
            workflow_definitions (name, description)
          `)
          .order('created_at', { ascending: false });

        if (status && status.length > 0) {
          query = query.in('status', status);
        }
        if (clientId) {
          query = query.eq('client->id', clientId);
        }
        if (teamId) {
          query = query.eq('team->id', teamId);
        }
        if (ownerId) {
          query = query.eq('owner->id', ownerId);
        }
        if (limit) {
          query = query.limit(limit);
        }

        const { data, error } = await query;
        if (error) throw error;
        result = data;
        break;
      }

      case 'GET_WORKFLOW_TASKS': {
        const { workflowId } = parameters;
        const { data, error } = await supabase
          .from('task_instances')
          .select(`
            *,
            task_definitions (name, description),
            module_instances (
              module_definitions (name)
            )
          `)
          .eq('workflow_instance_id', workflowId)
          .order('created_at', { ascending: true });

        if (error) throw error;
        result = data;
        break;
      }

      // Analysis Tools
      case 'GET_OVERDUE_TASKS': {
        const { teamId, userId, daysAhead = 0, includeCompleted = false } = parameters;
        
        const cutoffDate = new Date();
        cutoffDate.setDate(cutoffDate.getDate() + daysAhead);
        
        let query = supabase
          .from('task_instances')
          .select(`
            *,
            task_definitions (name, description),
            workflow_instances (id, status, client)
          `)
          .not('due_date', 'is', null)
          .lte('due_date', cutoffDate.toISOString());

        if (!includeCompleted) {
          query = query.not('status', 'in', '(completed,cancelled)');
        }
        if (teamId) {
          query = query.eq('team->id', teamId);
        }
        if (userId) {
          query = query.eq('owner->id', userId);
        }

        query = query.order('due_date', { ascending: true });

        const { data, error } = await query;
        if (error) throw error;
        result = data;
        break;
      }

      case 'FIND_BOTTLENECKS': {
        const { scope, scopeId } = parameters;
        
        // Get all incomplete tasks for the scope
        let tasksQuery = supabase
          .from('task_instances')
          .select(`
            id,
            task_definition_id,
            workflow_instance_id,
            status,
            task_definitions (id, name),
            workflow_instances (id, client)
          `)
          .in('status', ['new', 'pending', 'in_progress']);

        if (scope === 'user' && scopeId) {
          tasksQuery = tasksQuery.eq('owner->id', scopeId);
        } else if (scope === 'team' && scopeId) {
          tasksQuery = tasksQuery.eq('team->id', scopeId);
        }

        const { data: tasks, error: tasksError } = await tasksQuery;
        if (tasksError) throw tasksError;

        if (!tasks || tasks.length === 0) {
          result = { bottlenecks: [] };
          break;
        }

        // Get all dependencies
        const taskDefIds = tasks.map(t => t.task_definition_id);
        const { data: allDeps, error: depsError } = await supabase
          .from('task_dependency_definitions')
          .select('*')
          .in('depends_on_task_definition_id', taskDefIds);

        if (depsError) throw depsError;

        // Count how many tasks each incomplete task is blocking
        const blockingCounts = new Map<string, number>();
        tasks.forEach(task => {
          const count = allDeps?.filter(
            dep => dep.depends_on_task_definition_id === task.task_definition_id
          ).length || 0;
          if (count > 0) {
            blockingCounts.set(task.id, count);
          }
        });

        // Sort by blocking count
        const bottlenecks = Array.from(blockingCounts.entries())
          .map(([taskId, count]) => {
            const task = tasks.find(t => t.id === taskId);
            return { task, blockingCount: count };
          })
          .sort((a, b) => b.blockingCount - a.blockingCount)
          .slice(0, 10);

        result = { bottlenecks };
        break;
      }

      case 'CALCULATE_TASK_PRIORITY': {
        const { taskInstanceId, factors = ['due_date', 'blocking_count'] } = parameters;
        
        // Get the task
        const { data: task, error: taskError } = await supabase
          .from('task_instances')
          .select(`
            *,
            task_definitions (id, name)
          `)
          .eq('id', taskInstanceId)
          .single();

        if (taskError) throw taskError;

        let priorityScore = 0;
        const breakdown: any = {};

        // Due date factor
        if (factors.includes('due_date') && task.due_date) {
          const daysUntilDue = Math.floor(
            (new Date(task.due_date).getTime() - new Date().getTime()) / (1000 * 60 * 60 * 24)
          );
          if (daysUntilDue < 0) {
            breakdown.due_date = 50; // Overdue
          } else if (daysUntilDue <= 3) {
            breakdown.due_date = 30; // Due very soon
          } else if (daysUntilDue <= 7) {
            breakdown.due_date = 20; // Due this week
          } else {
            breakdown.due_date = 10; // Due later
          }
          priorityScore += breakdown.due_date;
        }

        // Blocking count factor
        if (factors.includes('blocking_count')) {
          const { data: deps, error: depsError } = await supabase
            .from('task_dependency_definitions')
            .select('task_definition_id')
            .eq('depends_on_task_definition_id', task.task_definition_id);

          if (!depsError && deps) {
            breakdown.blocking_count = Math.min(deps.length * 10, 40);
            priorityScore += breakdown.blocking_count;
          }
        }

        // Team capacity factor (simplified)
        if (factors.includes('team_capacity') && task.team?.id) {
          const { data: teamTasks } = await supabase
            .from('task_instances')
            .select('id')
            .eq('team->id', task.team.id)
            .in('status', ['new', 'pending', 'in_progress']);

          if (teamTasks && teamTasks.length > 10) {
            breakdown.team_capacity = 5; // Team is busy
          } else {
            breakdown.team_capacity = 15; // Team has capacity
          }
          priorityScore += breakdown.team_capacity || 0;
        }

        result = {
          taskId: taskInstanceId,
          priorityScore,
          breakdown,
          priority: priorityScore > 60 ? 'high' : priorityScore > 30 ? 'medium' : 'low',
        };
        break;
      }

      default:
        throw new Error(`Unknown tool: ${name}`);
    }

    return {
      toolName: name,
      result,
    };
  } catch (error) {
    console.error(`Error executing tool ${name}:`, error);
    return {
      toolName: name,
      result: { error: error instanceof Error ? error.message : 'Unknown error' },
    };
  }
}

export async function executeTools(toolCalls: ToolCall[]): Promise<ToolResult[]> {
  const results = await Promise.all(toolCalls.map((toolCall) => executeTool(toolCall)));
  return results;
}
