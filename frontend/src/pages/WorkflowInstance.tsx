import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { supabase } from '../lib/supabase';

interface WorkflowInstance {
  id: string;
  workflow_definition_id: string;
  status: string;
  created_at: string;
  updated_at: string;
  created_by: string;
}

function WorkflowInstance() {
  const { id } = useParams<{ id: string }>();
  const [workflow, setWorkflow] = useState<WorkflowInstance | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchWorkflow() {
      try {
        const { data, error } = await supabase
          .from('workflow_instances')
          .select('*')
          .eq('id', id)
          .single();

        if (error) throw error;
        setWorkflow(data);
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

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!workflow) return <div>Workflow not found</div>;

  return (
    <div>
      <h1>Workflow Instance</h1>
      <div>
        <p><strong>ID:</strong> {workflow.id}</p>
        <p><strong>Workflow Definition ID:</strong> {workflow.workflow_definition_id}</p>
        <p><strong>Status:</strong> {workflow.status}</p>
        <p><strong>Created At:</strong> {new Date(workflow.created_at).toLocaleString()}</p>
        <p><strong>Updated At:</strong> {new Date(workflow.updated_at).toLocaleString()}</p>
        <p><strong>Created By:</strong> {workflow.created_by}</p>
      </div>
    </div>
  );
}

export default WorkflowInstance;
