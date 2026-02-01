import { useEffect, useState } from 'react';
import { supabase } from '../lib/supabase';
import type { Client, Team, User, WorkflowDefinition, WorkflowInstance } from '../lib/supabase';

export type GetWorkflowsResponse = WorkflowInstance & {
    workflow_definition: WorkflowDefinition;
    owner: User | null;
    team: Team | null;
    client: Client;
}

export function useWorkflows() {
    const [data, setData] = useState<GetWorkflowsResponse[]>([]);
    const [loading, setLoading] = useState(true);
    const [error, setError] = useState<string | null>(null);

    useEffect(() => {
        async function fetchWorkflows() {
            try {
                const { data, error } = await supabase
                    .from('workflow_instances')
                    .select('*')
                    .order('created_at', { ascending: false });

                if (error) throw error;
                setData(data || []);
            } catch (err) {
                setError(err instanceof Error ? err.message : 'An error occurred');
            } finally {
                setLoading(false);
            }
        }

        fetchWorkflows();
    }, []);

    return { data, loading, error };
}
