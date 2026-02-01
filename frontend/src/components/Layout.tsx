import { Link, useLocation } from 'react-router-dom';
import { useEffect, useState } from 'react';
import { useUser } from '../contexts/UserContext';
import { supabase } from '../lib/supabase';
import './Layout.css';

interface LayoutProps {
  children: React.ReactNode;
}

function Layout({ children }: LayoutProps) {
  const location = useLocation();
  const { user, setUser } = useUser();
  const [users, setUsers] = useState<any[]>([]);

  useEffect(() => {
    const loadUsers = async () => {
      const { data, error } = await supabase
        .from('users')
        .select('*')
        .order('name');
      
      if (!error && data) {
        setUsers(data);
      }
    };
    loadUsers();
  }, []);

  const handleUserChange = async (userId: string) => {
    const selectedUser = users.find(u => u.id === userId);
    if (!selectedUser) return;

    // Get the user's team
    const { data: teams } = await supabase
      .from('teams')
      .select('id')
      .contains('members', [userId])
      .limit(1);

    setUser({
      ...selectedUser,
      teamId: teams?.[0]?.id,
    });
  };

  return (
    <div>
      <header>
        <div className="container">
          <div className="header-top">
            <h1>Workflow Management System</h1>
            <div className="user-selector">
              <label htmlFor="user-select">Current User:</label>
              <select 
                id="user-select"
                value={user?.id || ''} 
                onChange={(e) => handleUserChange(e.target.value)}
              >
                {users.map(u => (
                  <option key={u.id} value={u.id}>
                    {u.name} ({u.role})
                  </option>
                ))}
              </select>
            </div>
          </div>
          <nav>
            <Link to="/" className={location.pathname === '/' || location.pathname === '/for-you' ? 'active' : ''}>
              For You
            </Link>
            <Link to="/workflows" className={location.pathname === '/workflows' ? 'active' : ''}>
              Workflows
            </Link>
            <Link to="/tasks" className={location.pathname === '/tasks' ? 'active' : ''}>
              Tasks
            </Link>
          </nav>
        </div>
      </header>
      <main className="container">
        {children}
      </main>
    </div>
  );
}

export default Layout;
