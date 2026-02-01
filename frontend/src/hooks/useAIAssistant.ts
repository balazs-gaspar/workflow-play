import { useState, useEffect } from 'react';
import { selectTools, summarizeWithData, answerDirectly } from '../lib/gemini';
import { executeTools, setCurrentUser } from '../services/ai/toolExecutor';
import { AVAILABLE_TOOLS } from '../services/ai/toolDefinitions';
import { useUser } from '../contexts/UserContext';

export interface AIResponse {
  answer: string;
  toolsUsed: string[];
}

export function useAIAssistant() {
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const { user } = useUser();

  // Update the current user in the tool executor whenever it changes
  useEffect(() => {
    if (user) {
      setCurrentUser(user);
    }
  }, [user]);

  const ask = async (question: string): Promise<AIResponse> => {
    setLoading(true);
    setError(null);

    try {
      // Step 1: Ask Gemini to select appropriate tools
      const toolCalls = await selectTools(question, AVAILABLE_TOOLS);

      let answer: string;
      const toolsUsed: string[] = [];

      if (toolCalls.length === 0) {
        // No tools needed, answer directly
        answer = await answerDirectly(question);
      } else {
        // Step 2: Execute the selected tools
        toolsUsed.push(...toolCalls.map((tc) => tc.name));
        const toolResults = await executeTools(toolCalls);

        // Step 3: Ask Gemini to summarize with the tool results
        answer = await summarizeWithData(question, toolResults);
      }

      return { answer, toolsUsed };
    } catch (err) {
      const errorMessage = err instanceof Error ? err.message : 'An error occurred';
      setError(errorMessage);
      throw err;
    } finally {
      setLoading(false);
    }
  };

  return { ask, loading, error };
}
