import { Link, useLocation } from 'react-router-dom';
import './Layout.css';

interface LayoutProps {
  children: React.ReactNode;
}

function Layout({ children }: LayoutProps) {
  const location = useLocation();

  return (
    <div>
      <header>
        <div className="container">
          <h1>Workflow Management System</h1>
          <nav>
            <Link to="/" className={location.pathname === '/' ? 'active' : ''}>
              Home
            </Link>
            <Link to="/workflows" className={location.pathname === '/workflows' ? 'active' : ''}>
              Workflows
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
