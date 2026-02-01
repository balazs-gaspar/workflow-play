import React, { createContext, useContext, useState, useEffect } from 'react';
import { supabase } from '../lib/supabase';
import { useAuth } from './AuthContext';

interface User {
  id: string;
  name: string;
  email: string;
  role: string;
  teamId?: string;
}

interface UserContextType {
  user: User | null;
  setUser: (user: User | null) => void;
  isLoading: boolean;
}

const UserContext = createContext<UserContextType | undefined>(undefined);

export function UserProvider({ children }: { children: React.ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [isLoading, setIsLoading] = useState(true);
  const { user: authUser } = useAuth();

  useEffect(() => {
    const loadUser = async () => {
      if (!authUser) {
        setUser(null);
        setIsLoading(false);
        return;
      }

      try {
        // Load user data from database matching the authenticated user's email
        const { data, error } = await supabase
          .from('users')
          .select('*')
          .eq('email', authUser.email)
          .single();

        if (error) throw error;

        // Get the user's team
        const { data: teams } = await supabase
          .from('teams')
          .select('id')
          .contains('members', [data.id])
          .limit(1);

        setUser({
          ...data,
          teamId: teams?.[0]?.id,
        });
      } catch (error) {
        console.error('Error loading user:', error);
        setUser(null);
      } finally {
        setIsLoading(false);
      }
    };

    loadUser();
  }, [authUser]);

  return (
    <UserContext.Provider value={{ user, setUser, isLoading }}>
      {children}
    </UserContext.Provider>
  );
}

export function useUser() {
  const context = useContext(UserContext);
  if (context === undefined) {
    throw new Error('useUser must be used within a UserProvider');
  }
  return context;
}
