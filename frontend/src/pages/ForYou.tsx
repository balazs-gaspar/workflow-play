import { useState } from 'react';
import { useAIAssistant } from '../hooks/useAIAssistant';

function ForYou() {
  const [question, setQuestion] = useState('');
  const [answer, setAnswer] = useState('');
  const [toolsUsed, setToolsUsed] = useState<string[]>([]);
  const { ask, loading, error } = useAIAssistant();

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!question.trim()) return;

    try {
      const response = await ask(question);
      setAnswer(response.answer);
      setToolsUsed(response.toolsUsed);
    } catch (err) {
      console.error('Error asking AI:', err);
    }
  };

  return (
    <div>
      <h1>For You</h1>
      <p style={{ marginBottom: '20px', color: '#666' }}>
        Ask me anything about your workflows, tasks, and team workload!
      </p>

      <form onSubmit={handleSubmit} style={{ marginBottom: '30px' }}>
        <div style={{ display: 'flex', gap: '10px' }}>
          <input
            type="text"
            value={question}
            onChange={(e) => setQuestion(e.target.value)}
            placeholder="E.g., What tasks are pending? or Show me workflow status..."
            style={{
              flex: 1,
              padding: '12px',
              fontSize: '16px',
              border: '1px solid #ddd',
              borderRadius: '6px',
            }}
            disabled={loading}
          />
          <button
            type="submit"
            disabled={loading || !question.trim()}
            style={{
              padding: '12px 24px',
              fontSize: '16px',
              backgroundColor: loading ? '#ccc' : '#007bff',
              color: 'white',
              border: 'none',
              borderRadius: '6px',
              cursor: loading ? 'not-allowed' : 'pointer',
            }}
          >
            {loading ? 'Thinking...' : 'Ask'}
          </button>
        </div>
      </form>

      {error && (
        <div
          style={{
            padding: '15px',
            backgroundColor: '#fee',
            border: '1px solid #fcc',
            borderRadius: '6px',
            marginBottom: '20px',
            color: '#c00',
          }}
        >
          Error: {error}
        </div>
      )}

      {answer && (
        <div>
          <div
            style={{
              padding: '20px',
              backgroundColor: '#f9f9f9',
              border: '1px solid #ddd',
              borderRadius: '8px',
              marginBottom: '15px',
            }}
          >
            <h3 style={{ marginTop: 0 }}>Answer:</h3>
            <p style={{ whiteSpace: 'pre-wrap', lineHeight: '1.6' }}>{answer}</p>
          </div>

          {toolsUsed.length > 0 && (
            <div style={{ fontSize: '14px', color: '#666' }}>
              <strong>Tools used:</strong> {toolsUsed.join(', ')}
            </div>
          )}
        </div>
      )}

      {!answer && !loading && !error && (
        <div style={{ textAlign: 'center', padding: '40px', color: '#999' }}>
          <p>Try asking:</p>
          <ul style={{ listStyle: 'none', padding: 0 }}>
            <li style={{ marginBottom: '8px' }}>• "What tasks are pending?"</li>
            <li style={{ marginBottom: '8px' }}>• "Show me all active workflows"</li>
            <li style={{ marginBottom: '8px' }}>• "What's the team workload?"</li>
          </ul>
        </div>
      )}
    </div>
  );
}

export default ForYou;
