import { useEffect, useState } from 'react';
import { Link } from 'react-router-dom';
import { supabase } from '../lib/supabase';

interface WorkflowInstance {
  id: string;
  workflow_definition_id: string;
  status: string;
  created_at: string;
  updated_at: string;
  created_by: string;
}

function WorkflowInstances() {
  const [workflows, setWorkflows] = useState<WorkflowInstance[]>([]);
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
      <h1>Workflow Instances</h1>
      {workflows.length === 0 ? (
        <p>No workflow instances found</p>
      ) : (
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ borderBottom: '2px solid #ddd' }}>
              <th style={{ padding: '10px', textAlign: 'left' }}>ID</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Workflow Definition</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Status</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Created By</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Created At</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Actions</th>
            </tr>
          </thead>
          <tbody>
            {workflows.map((workflow) => (
              <tr key={workflow.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '10px' }}>{workflow.id}</td>
                <td style={{ padding: '10px' }}>{workflow.workflow_definition_id}</td>
                <td style={{ padding: '10px' }}>{workflow.status}</td>
                <td style={{ padding: '10px' }}>{workflow.created_by}</td>
                <td style={{ padding: '10px' }}>{new Date(workflow.created_at).toLocaleString()}</td>
                <td style={{ padding: '10px' }}>
                  <Link to={`/workflow/${workflow.id}`}>View Details</Link>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </div>
  );
}

export default WorkflowInstances;
