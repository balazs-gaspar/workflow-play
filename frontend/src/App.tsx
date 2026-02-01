import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Layout from './components/Layout';
import Home from './pages/Home';
import Workflows from './pages/Workflows';

function App() {
  return (
    <Router basename="/workflow-play">
      <Layout>
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/workflows" element={<Workflows />} />
        </Routes>
      </Layout>
    </Router>
  );
}

export default App;
