import { useEffect, useState } from 'react';
import { useParams } from 'react-router-dom';
import { supabase } from '../lib/supabase';

interface WorkflowDefinition {
  id: string;
  name: string;
  description: string | null;
  version: number;
  created_at: string;
  updated_at: string;
}

function WorkflowDefinition() {
  const { workflowDefinitionId } = useParams<{ workflowDefinitionId: string }>();
  const [workflow, setWorkflow] = useState<WorkflowDefinition | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchWorkflow() {
      try {
        const { data, error } = await supabase
          .from('workflow_definitions')
          .select('*')
          .eq('id', workflowDefinitionId)
          .single();

        if (error) throw error;
        setWorkflow(data);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    }

    if (workflowDefinitionId) {
      fetchWorkflow();
    }
  }, [workflowDefinitionId]);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!workflow) return <div>Workflow definition not found</div>;

  return (
    <div>
      <h1>Workflow Definition Details</h1>
      <div>
        <p><strong>ID:</strong> {workflow.id}</p>
        <p><strong>Name:</strong> {workflow.name}</p>
        <p><strong>Description:</strong> {workflow.description || 'No description'}</p>
        <p><strong>Version:</strong> {workflow.version}</p>
        <p><strong>Created At:</strong> {new Date(workflow.created_at).toLocaleString()}</p>
        <p><strong>Updated At:</strong> {new Date(workflow.updated_at).toLocaleString()}</p>
      </div>
    </div>
  );
}

export default WorkflowDefinition;
