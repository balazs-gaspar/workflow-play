import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase } from '../lib/supabase';

interface WorkflowDefinition {
  id: string;
  name: string;
  description: string | null;
  version: number;
  created_at: string;
  updated_at: string;
}

function WorkflowDefinitions() {
  const [workflows, setWorkflows] = useState<WorkflowDefinition[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchWorkflows() {
      try {
        const { data, error } = await supabase
          .from('workflow_definitions')
          .select('*')
          .order('created_at', { ascending: false });

        if (error) throw error;
        setWorkflows(data || []);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    }

    fetchWorkflows();
  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div>
      <h1>Workflow Definitions</h1>
      {workflows.length === 0 ? (
        <p>No workflow definitions found</p>
      ) : (
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ borderBottom: '2px solid #ddd' }}>
              <th style={{ padding: '10px', textAlign: 'left' }}>Name</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Description</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Version</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Created At</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Actions</th>
            </tr>
          </thead>
          <tbody>
            {workflows.map((workflow) => (
              <tr key={workflow.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '10px' }}>{workflow.name}</td>
                <td style={{ padding: '10px' }}>{workflow.description || '-'}</td>
                <td style={{ padding: '10px' }}>{workflow.version}</td>
                <td style={{ padding: '10px' }}>{new Date(workflow.created_at).toLocaleString()}</td>
                <td style={{ padding: '10px' }}>
                  <Link to={`/manage/workflow/${workflow.id}`}>View Details</Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </div>
  );
}

export default WorkflowDefinitions;
