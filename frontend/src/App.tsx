import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Layout from './components/Layout';
import WorkflowInstances from './pages/WorkflowInstances';
import WorkflowInstance from './pages/WorkflowInstance';
import Tasks from './pages/Tasks';
import WorkflowDefinitions from './pages/WorkflowDefinitions';
import WorkflowDefinition from './pages/WorkflowDefinition';
import ForYou from './pages/ForYou';

function App() {
  return (
    <Router basename="/workflow-play">
      <Layout>
        <Routes>
          <Route path="/" element={<ForYou />} />
          <Route path="/for-you" element={<ForYou />} />
          <Route path="/workflows" element={<WorkflowInstances />} />
          <Route path="/workflow/:id" element={<WorkflowInstance />} />
          <Route path="/tasks" element={<Tasks />} />
          <Route path="/manage/workflows" element={<WorkflowDefinitions />} />
          <Route path="/manage/workflow/:workflowDefinitionId" element={<WorkflowDefinition />} />
        </Routes>
      </Layout>
    </Router>
  );
}

export default App;
