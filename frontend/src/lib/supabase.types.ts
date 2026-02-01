export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "14.1"
  }
  graphql_public: {
    Tables: {
      [_ in never]: never
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      graphql: {
        Args: {
          extensions?: Json
          operationName?: string
          query?: string
          variables?: Json
        }
        Returns: Json
      }
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
  public: {
    Tables: {
      clients: {
        Row: {
          contact_email: string | null
          created_at: string | null
          id: string
          name: string
          organization: string | null
        }
        Insert: {
          contact_email?: string | null
          created_at?: string | null
          id: string
          name: string
          organization?: string | null
        }
        Update: {
          contact_email?: string | null
          created_at?: string | null
          id?: string
          name?: string
          organization?: string | null
        }
        Relationships: []
      }
      module_definitions: {
        Row: {
          created_at: string | null
          description: string
          id: string
          name: string
          workflow_definition_id: string
        }
        Insert: {
          created_at?: string | null
          description: string
          id: string
          name: string
          workflow_definition_id: string
        }
        Update: {
          created_at?: string | null
          description?: string
          id?: string
          name?: string
          workflow_definition_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "module_definitions_workflow_definition_id_fkey"
            columns: ["workflow_definition_id"]
            isOneToOne: false
            referencedRelation: "workflow_definitions"
            referencedColumns: ["id"]
          },
        ]
      }
      module_instances: {
        Row: {
          completed_at: string | null
          created_at: string | null
          id: string
          module_definition_id: string
          started_at: string | null
          status: string
          updated_at: string | null
          workflow_instance_id: string
        }
        Insert: {
          completed_at?: string | null
          created_at?: string | null
          id: string
          module_definition_id: string
          started_at?: string | null
          status: string
          updated_at?: string | null
          workflow_instance_id: string
        }
        Update: {
          completed_at?: string | null
          created_at?: string | null
          id?: string
          module_definition_id?: string
          started_at?: string | null
          status?: string
          updated_at?: string | null
          workflow_instance_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "module_instances_module_definition_id_fkey"
            columns: ["module_definition_id"]
            isOneToOne: false
            referencedRelation: "module_definitions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "module_instances_workflow_instance_id_fkey"
            columns: ["workflow_instance_id"]
            isOneToOne: false
            referencedRelation: "workflow_instances"
            referencedColumns: ["id"]
          },
        ]
      }
      task_definitions: {
        Row: {
          created_at: string | null
          description: string
          id: string
          module_definition_id: string
          name: string
        }
        Insert: {
          created_at?: string | null
          description: string
          id: string
          module_definition_id: string
          name: string
        }
        Update: {
          created_at?: string | null
          description?: string
          id?: string
          module_definition_id?: string
          name?: string
        }
        Relationships: [
          {
            foreignKeyName: "task_definitions_module_definition_id_fkey"
            columns: ["module_definition_id"]
            isOneToOne: false
            referencedRelation: "module_definitions"
            referencedColumns: ["id"]
          },
        ]
      }
      task_dependency_definitions: {
        Row: {
          created_at: string | null
          depends_on_task_definition_id: string
          id: string
          task_definition_id: string
        }
        Insert: {
          created_at?: string | null
          depends_on_task_definition_id: string
          id: string
          task_definition_id: string
        }
        Update: {
          created_at?: string | null
          depends_on_task_definition_id?: string
          id?: string
          task_definition_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "task_dependency_definitions_depends_on_task_definition_id_fkey"
            columns: ["depends_on_task_definition_id"]
            isOneToOne: false
            referencedRelation: "task_definitions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "task_dependency_definitions_task_definition_id_fkey"
            columns: ["task_definition_id"]
            isOneToOne: false
            referencedRelation: "task_definitions"
            referencedColumns: ["id"]
          },
        ]
      }
      task_instances: {
        Row: {
          completed_at: string | null
          created_at: string | null
          due_date: string | null
          id: string
          module_instance_id: string
          owner: Json | null
          started_at: string | null
          status: string
          task_definition_id: string
          team: Json
          updated_at: string | null
          workflow_instance_id: string
        }
        Insert: {
          completed_at?: string | null
          created_at?: string | null
          due_date?: string | null
          id: string
          module_instance_id: string
          owner?: Json | null
          started_at?: string | null
          status: string
          task_definition_id: string
          team: Json
          updated_at?: string | null
          workflow_instance_id: string
        }
        Update: {
          completed_at?: string | null
          created_at?: string | null
          due_date?: string | null
          id?: string
          module_instance_id?: string
          owner?: Json | null
          started_at?: string | null
          status?: string
          task_definition_id?: string
          team?: Json
          updated_at?: string | null
          workflow_instance_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "task_instances_module_instance_id_fkey"
            columns: ["module_instance_id"]
            isOneToOne: false
            referencedRelation: "module_instances"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "task_instances_task_definition_id_fkey"
            columns: ["task_definition_id"]
            isOneToOne: false
            referencedRelation: "task_definitions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "task_instances_workflow_instance_id_fkey"
            columns: ["workflow_instance_id"]
            isOneToOne: false
            referencedRelation: "workflow_instances"
            referencedColumns: ["id"]
          },
        ]
      }
      teams: {
        Row: {
          created_at: string | null
          id: string
          members: string[]
          name: string
        }
        Insert: {
          created_at?: string | null
          id: string
          members?: string[]
          name: string
        }
        Update: {
          created_at?: string | null
          id?: string
          members?: string[]
          name?: string
        }
        Relationships: []
      }
      users: {
        Row: {
          created_at: string | null
          email: string
          id: string
          name: string
          role: string
        }
        Insert: {
          created_at?: string | null
          email: string
          id: string
          name: string
          role: string
        }
        Update: {
          created_at?: string | null
          email?: string
          id?: string
          name?: string
          role?: string
        }
        Relationships: []
      }
      workflow_definitions: {
        Row: {
          created_at: string
          description: string
          id: string
          name: string
          version: string
        }
        Insert: {
          created_at: string
          description: string
          id: string
          name: string
          version: string
        }
        Update: {
          created_at?: string
          description?: string
          id?: string
          name?: string
          version?: string
        }
        Relationships: []
      }
      workflow_instances: {
        Row: {
          client: Json
          completed_at: string | null
          created_at: string
          id: string
          owner: Json
          started_at: string | null
          status: string
          team: Json
          updated_at: string
          workflow_definition_id: string
        }
        Insert: {
          client: Json
          completed_at?: string | null
          created_at: string
          id: string
          owner: Json
          started_at?: string | null
          status: string
          team: Json
          updated_at: string
          workflow_definition_id: string
        }
        Update: {
          client?: Json
          completed_at?: string | null
          created_at?: string
          id?: string
          owner?: Json
          started_at?: string | null
          status?: string
          team?: Json
          updated_at?: string
          workflow_definition_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "workflow_instances_workflow_definition_id_fkey"
            columns: ["workflow_definition_id"]
            isOneToOne: false
            referencedRelation: "workflow_definitions"
            referencedColumns: ["id"]
          },
        ]
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      [_ in never]: never
    }
    Enums: {
      [_ in never]: never
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  graphql_public: {
    Enums: {},
  },
  public: {
    Enums: {},
  },
} as const
