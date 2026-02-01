import { Link } from 'react-router-dom';
import { useWorkflows } from '../hooks/useWorkflows';

function WorkflowInstances() {
  const { data: workflows, loading, error } = useWorkflows();

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
              <th style={{ padding: '10px', textAlign: 'left' }}>Owner</th>
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
                <td style={{ padding: '10px' }}>{workflow.owner?.name || 'N/A'}</td>
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
