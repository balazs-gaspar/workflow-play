import { createClient } from '@supabase/supabase-js';

// These should be replaced with your actual Supabase project URL and anon key
// For public read-only access, the anon key is safe to expose
const supabaseUrl = import.meta.env.VITE_SUPABASE_URL || 'https://placeholder.supabase.co';
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY || 'placeholder-key';

export const supabase = createClient(supabaseUrl, supabaseAnonKey);
