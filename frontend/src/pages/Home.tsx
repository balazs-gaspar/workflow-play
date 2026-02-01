import { Link } from 'react-router-dom';
import './Home.css';

function Home() {
  return (
    <div className="hero">
      <h1>Welcome to Workflow Management System</h1>
      <p>A comprehensive system for managing workflows, modules, and tasks with real-time tracking and recommendations.</p>
      
      <div className="features">
        <div className="feature-card">
          <h2>📋 Workflows</h2>
          <p>Browse and manage workflow definitions with modular architecture.</p>
          <Link to="/workflows" className="btn">View Workflows</Link>
        </div>
        
        <div className="feature-card">
          <h2>🔄 Instances</h2>
          <p>Track workflow instances and their execution status for clients.</p>
        </div>
        
        <div className="feature-card">
          <h2>👥 Teams</h2>
          <p>Collaborate with team members and assign tasks efficiently.</p>
        </div>
      </div>
    </div>
  );
}

export default Home;
