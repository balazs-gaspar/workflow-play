import { useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';

interface WorkflowDefinition {
  id: string;
  name: string;
  description: string;
  version: string;
  created_at: string;
}

interface ModuleDefinition {
  id: string;
  workflow_definition_id: string;
  name: string;
  description: string;
}

export default function WorkflowList() {
  const [workflows, setWorkflows] = useState<WorkflowDefinition[]>([]);
  const [modules, setModules] = useState<ModuleDefinition[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [selectedWorkflow, setSelectedWorkflow] = useState<string | null>(null);

  useEffect(() => {
    fetchWorkflows();
  }, []);

  useEffect(() => {
    if (selectedWorkflow) {
      fetchModules(selectedWorkflow);
    }
  }, [selectedWorkflow]);

  async function fetchWorkflows() {
    try {
      setLoading(true);
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

  async function fetchModules(workflowId: string) {
    try {
      const { data, error } = await supabase
        .from('module_definitions')
        .select('*')
        .eq('workflow_definition_id', workflowId);

      if (error) throw error;
      setModules(data || []);
    } catch (err) {
      console.error('Error fetching modules:', err);
    }
  }

  if (loading) {
    return <div className="loading">Loading workflows...</div>;
  }

  if (error) {
    return (
      <div className="error">
        <h3>Error loading workflows</h3>
        <p>{error}</p>
        <p className="hint">
          Make sure you have configured your Supabase URL and API key in the environment variables.
        </p>
      </div>
    );
  }

  return (
    <div className="workflow-list">
      <h2>Workflow Definitions</h2>
      {workflows.length === 0 ? (
        <p className="no-data">No workflows found. Please seed the database.</p>
      ) : (
        <div className="workflows">
          {workflows.map((workflow) => (
            <div
              key={workflow.id}
              className={`workflow-card ${selectedWorkflow === workflow.id ? 'selected' : ''}`}
              onClick={() => setSelectedWorkflow(
                selectedWorkflow === workflow.id ? null : workflow.id
              )}
            >
              <h3>{workflow.name}</h3>
              <p className="description">{workflow.description}</p>
              <div className="meta">
                <span className="version">v{workflow.version}</span>
                <span className="date">
                  {new Date(workflow.created_at).toLocaleDateString()}
                </span>
              </div>
              
              {selectedWorkflow === workflow.id && modules.length > 0 && (
                <div className="modules">
                  <h4>Modules</h4>
                  <ul>
                    {modules.map((module) => (
                      <li key={module.id}>
                        <strong>{module.name}</strong>
                        <p>{module.description}</p>
                      </li>
                    ))}
                  </ul>
                </div>
              )}
            </div>
          ))}
        </div>
      )}
      
      <style>{`
        .workflow-list {
          padding: 1rem 0;
        }
        
        .workflow-list h2 {
          margin-bottom: 2rem;
          color: #2c3e50;
        }
        
        .loading {
          text-align: center;
          padding: 3rem;
          color: #666;
          font-size: 1.2rem;
        }
        
        .error {
          background: #fee;
          border: 1px solid #fcc;
          border-radius: 8px;
          padding: 2rem;
          color: #c33;
        }
        
        .error h3 {
          margin-bottom: 1rem;
        }
        
        .hint {
          margin-top: 1rem;
          font-size: 0.9rem;
          color: #666;
        }
        
        .no-data {
          text-align: center;
          padding: 3rem;
          color: #666;
        }
        
        .workflows {
          display: grid;
          gap: 1.5rem;
        }
        
        .workflow-card {
          background: white;
          padding: 1.5rem;
          border-radius: 8px;
          box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
          cursor: pointer;
          transition: all 0.3s;
          border: 2px solid transparent;
        }
        
        .workflow-card:hover {
          transform: translateY(-2px);
          box-shadow: 0 4px 16px rgba(0, 0, 0, 0.15);
          border-color: #3498db;
        }
        
        .workflow-card.selected {
          border-color: #3498db;
          background: #f0f8ff;
        }
        
        .workflow-card h3 {
          margin-bottom: 0.5rem;
          color: #2c3e50;
        }
        
        .description {
          color: #666;
          margin-bottom: 1rem;
        }
        
        .meta {
          display: flex;
          gap: 1rem;
          font-size: 0.9rem;
          color: #999;
        }
        
        .version {
          background: #3498db;
          color: white;
          padding: 0.25rem 0.5rem;
          border-radius: 4px;
        }
        
        .modules {
          margin-top: 1.5rem;
          padding-top: 1.5rem;
          border-top: 1px solid #ddd;
        }
        
        .modules h4 {
          margin-bottom: 1rem;
          color: #2c3e50;
        }
        
        .modules ul {
          list-style: none;
        }
        
        .modules li {
          background: #f8f9fa;
          padding: 1rem;
          border-radius: 4px;
          margin-bottom: 0.5rem;
        }
        
        .modules li strong {
          display: block;
          margin-bottom: 0.25rem;
          color: #2c3e50;
        }
        
        .modules li p {
          color: #666;
          font-size: 0.9rem;
          margin: 0;
        }
      `}</style>
    </div>
  );
}
