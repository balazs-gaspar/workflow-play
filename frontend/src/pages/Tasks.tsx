import { useEffect, useState } from 'react';
import { supabase } from '../lib/supabase';

interface TaskInstance {
  id: string;
  workflow_instance_id: string;
  task_definition_id: string;
  status: string;
  assigned_to: string | null;
  created_at: string;
  updated_at: string;
}

function Tasks() {
  const [tasks, setTasks] = useState<TaskInstance[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    async function fetchTasks() {
      try {
        const { data, error } = await supabase
          .from('task_instances')
          .select('*')
          .order('created_at', { ascending: false });

        if (error) throw error;
        setTasks(data || []);
      } catch (err) {
        setError(err instanceof Error ? err.message : 'An error occurred');
      } finally {
        setLoading(false);
      }
    }

    fetchTasks();
  }, []);

  if (loading) return <div>Loading...</div>;
  if (error) return <div>Error: {error}</div>;

  return (
    <div>
      <h1>Task Instances</h1>
      {tasks.length === 0 ? (
        <p>No tasks found</p>
      ) : (
        <table style={{ width: '100%', borderCollapse: 'collapse' }}>
          <thead>
            <tr style={{ borderBottom: '2px solid #ddd' }}>
              <th style={{ padding: '10px', textAlign: 'left' }}>ID</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Workflow Instance</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Task Definition</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Status</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Assigned To</th>
              <th style={{ padding: '10px', textAlign: 'left' }}>Created At</th>
            </tr>
          </thead>
          <tbody>
            {tasks.map((task) => (
              <tr key={task.id} style={{ borderBottom: '1px solid #eee' }}>
                <td style={{ padding: '10px' }}>{task.id}</td>
                <td style={{ padding: '10px' }}>{task.workflow_instance_id}</td>
                <td style={{ padding: '10px' }}>{task.task_definition_id}</td>
                <td style={{ padding: '10px' }}>{task.status}</td>
                <td style={{ padding: '10px' }}>{task.assigned_to || 'Unassigned'}</td>
                <td style={{ padding: '10px' }}>{new Date(task.created_at).toLocaleString()}</td>
              </tr>
            ))}
          </tbody>
        </table>
      )}
    </div>
  );
}

export default Tasks;
