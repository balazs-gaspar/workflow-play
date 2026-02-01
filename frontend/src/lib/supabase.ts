import { createClient } from '@supabase/supabase-js';
import type { Database } from './supabase.types';

// These should be replaced with your actual Supabase project URL and anon key
// For public read-only access, the anon key is safe to expose
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || 'https://placeholder.supabase.co';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || 'placeholder-key';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

export type ModuleDefinition = Database['public']['Tables']['module_definitions']['Row'];
export type WorkflowDefinition = Database['public']['Tables']['workflow_definitions']['Row'];
export type WorkflowInstance = Database['public']['Tables']['workflow_instances']['Row'];
export type TaskDefinition = Database['public']['Tables']['task_definitions']['Row'];
export type TaskInstance = Database['public']['Tables']['task_instances']['Row'];
export type ModuleInstance = Database['public']['Tables']['module_instances']['Row'];
export type User = Database['public']['Tables']['users']['Row'];
export type Team = Database['public']['Tables']['teams']['Row'];
export type Client = Database['public']['Tables']['clients']['Row'];