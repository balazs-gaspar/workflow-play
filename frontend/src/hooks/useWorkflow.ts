import { useEffect, useState } from 'react';
import { supabase } from '../lib/supabase';
import type { WorkflowInstance, WorkflowDefinition, ModuleDefinition, ModuleInstance, TaskInstance, TaskDefinition, User, Team, Client } from '../lib/supabase';

export type GetWorkflowResponse = WorkflowInstance & {
    workflow_definition: WorkflowDefinition;
    owner: User | null;
    team: Team | null;
    client: Client;
    modules: (ModuleInstance & {
        module_definition: ModuleDefinition;
        tasks: (TaskInstance & {
            owner: User | null;
            team: Team | null;
            task_definition: TaskDefinition;
        })[];
    })[];
}

export function useWorkflow(id: string | undefined) {
    const [data, setData] = useState<GetWorkflowResponse | null>(null);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        async function fetchWorkflow() {
            try {
                const { data, error } = await supabase
                    .from('workflow_instances')
                    .select(`
                        *,
                        workflow_definition:workflow_definitions (
                            name,
                            description,
                            version
                        ),
                        modules:module_instances (
                        *,
                        module_definition:module_definitions (
                            name,
                            description
                        ),
                        tasks:task_instances (
                            *,
                            task_definition:task_definitions (
                            name,
                            description
                            )
                        )
                        )
                    `)
                    .eq('id', id)
                    .single();

                if (error) throw error;
                console.log("workflow instance", data);
                setData(data);
            } catch (err) {
                setError(err instanceof Error ? err.message : 'An error occurred');
            } finally {
                setLoading(false);
            }
        }

        if (id) {
            fetchWorkflow();
        }
    }, [id]);

    return { data, loading, error };
}
