import { GoogleGenerativeAI } from '@google/generative-ai';

const API_KEY = import.meta.env.VITE_GEMINI_API_KEY || '';
const MODEL_NAME = 'gemini-3-flash-preview';

if (!API_KEY) {
  console.warn('VITE_GEMINI_API_KEY not set in environment variables');
}

const genAI = new GoogleGenerativeAI(API_KEY);

export interface Tool {
  name: string;
  description: string;
  parameters: {
    type: string;
    properties: Record<string, { type: string; description: string }>;
    required?: string[];
  };
}

export interface ToolCall {
  name: string;
  parameters: any;
}

export interface ToolResult {
  toolName: string;
  result: any;
}

export async function selectTools(
  question: string,
  availableTools: Tool[]
): Promise<ToolCall[]> {
  const model = genAI.getGenerativeModel({ model: MODEL_NAME });

  const toolsDescription = availableTools
    .map(
      (tool) =>
        `- ${tool.name}: ${tool.description}\n  Parameters: ${JSON.stringify(tool.parameters, null, 2)}`
    )
    .join('\n');

  const prompt = `You are a workflow management assistant. Based on the user's question, select which tools to call and with what parameters.

Available tools:
${toolsDescription}

User question: "${question}"

Respond with a JSON array of tool calls in this format:
[
  {
    "name": "TOOL_NAME",
    "parameters": { "param1": "value1" }
  }
]

If no tools are needed, return an empty array [].`;

  const result = await model.generateContent(prompt);
  const response = await result.response;
  const text = response.text();

  try {
    // Extract JSON from the response (handle markdown code blocks)
    const jsonMatch = text.match(/\[[\s\S]*\]/);
    if (jsonMatch) {
      return JSON.parse(jsonMatch[0]);
    }
    return [];
  } catch (error) {
    console.error('Failed to parse tool selection response:', text);
    return [];
  }
}

export async function summarizeWithData(
  question: string,
  toolResults: ToolResult[]
): Promise<string> {
  const model = genAI.getGenerativeModel({ model: MODEL_NAME });

  const resultsText = toolResults
    .map((tr) => `Tool: ${tr.toolName}\nResult: ${JSON.stringify(tr.result, null, 2)}`)
    .join('\n\n');

  const prompt = `You are a helpful workflow management assistant. A user asked a question, and I've gathered data by calling various tools.

User question: "${question}"

Tool results:
${resultsText}

Based on this data, provide a clear, natural language answer to the user's question. Be concise and helpful.`;

  const result = await model.generateContent(prompt);
  const response = await result.response;
  return response.text();
}

export async function answerDirectly(question: string): Promise<string> {
  const model = genAI.getGenerativeModel({ model: MODEL_NAME });

  const prompt = `You are a helpful workflow management assistant. Answer the following question:

"${question}"

Provide a clear, helpful response.`;

  const result = await model.generateContent(prompt);
  const response = await result.response;
  return response.text();
}
