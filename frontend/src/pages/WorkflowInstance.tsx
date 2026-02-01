import { useParams } from 'react-router-dom';
import { useWorkflow } from '../hooks/useWorkflow';

function WorkflowInstance() {
  const { id } = useParams<{ id: string }>();
  const { data, loading, error } = useWorkflow(id);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;
  if (!data) return <div>Workflow not found</div>;

  return (
    <div>
      <h1>Workflow Instance</h1>
      <div style={{ marginBottom: '30px' }}>
        <p><strong>ID:</strong> {data.id}</p>
        <p><strong>Workflow Definition:</strong> {data.workflow_definition?.name || data.workflow_definition_id}</p>
        <p><strong>Status:</strong> {data.status}</p>
        <p><strong>Client:</strong> {data.client.name || 'N/A'}</p>
        <p><strong>Team:</strong> {data.team?.name || 'N/A'}</p>
        <p><strong>Owner:</strong> {data.owner?.name || 'N/A'}</p>
        <p><strong>Created At:</strong> {new Date(data.created_at).toLocaleString()}</p>
        <p><strong>Updated At:</strong> {new Date(data.updated_at).toLocaleString()}</p>
        {data.started_at && <p><strong>Started At:</strong> {new Date(data.started_at).toLocaleString()}</p>}
        {data.completed_at && <p><strong>Completed At:</strong> {new Date(data.completed_at).toLocaleString()}</p>}
      </div>

      <h2>Tasks by Module</h2>
      {!data.modules || data.modules.length === 0 ? (
        <p>No modules found for this workflow</p>
      ) : (
        <div style={{ display: 'flex', flexDirection: 'column', gap: '20px' }}>
          {data.modules.map((module) => (
            <div
              key={module.id}
              style={{
                border: '1px solid #ddd',
                borderRadius: '8px',
                padding: '20px',
                backgroundColor: '#f9f9f9',
              }}
            >
              <h3 style={{ marginTop: 0 }}>{module.module_definition?.name || 'Unknown Module'}</h3>
              <p style={{ color: '#666', marginBottom: '15px' }}>
                {module.module_definition?.description || ''}
              </p>
              <p style={{ marginBottom: '15px' }}>
                <strong>Module Status:</strong> {module.status}
              </p>

              {!module.tasks || module.tasks.length === 0 ? (
                <p style={{ fontStyle: 'italic', color: '#999' }}>No tasks in this module</p>
              ) : (
                <div style={{ display: 'flex', flexDirection: 'column', gap: '10px' }}>
                  {module.tasks.map((task) => (
                    <div
                      key={task.id}
                      style={{
                        border: '1px solid #ccc',
                        borderRadius: '6px',
                        padding: '15px',
                        backgroundColor: '#fff',
                      }}
                    >
                      <h4 style={{ marginTop: 0, marginBottom: '8px' }}>
                        {task.task_definition?.name || 'Unknown Task'}
                      </h4>
                      <p style={{ color: '#666', marginBottom: '10px', fontSize: '14px' }}>
                        {task.task_definition?.description || ''}
                      </p>
                      <div style={{ display: 'flex', gap: '20px', fontSize: '14px' }}>
                        <span>
                          <strong>Status:</strong> {task.status}
                        </span>
                        <span>
                          <strong>Owner:</strong> {task.owner?.name || 'Unassigned'}
                        </span>
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

export default WorkflowInstance;
