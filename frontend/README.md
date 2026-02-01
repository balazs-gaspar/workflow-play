# Workflow Management System - Frontend

This is an Astro-based frontend application with React components that connects to Supabase to display workflow management data.

## Features

- 🚀 Built with [Astro](https://astro.build) for optimal performance
- ⚛️ React components for interactive UI
- 🗄️ Supabase integration for real-time data
- 📱 Responsive design
- 🎨 Clean, modern UI

## Prerequisites

- Node.js 18+ 
- npm or yarn
- A Supabase project (see `/supabase/README.md` for setup)

## Setup

### 1. Install Dependencies

```bash
npm install
```

### 2. Configure Environment Variables

Create a `.env` file in the `frontend` directory:

```env
PUBLIC_SUPABASE_URL=your_supabase_project_url
PUBLIC_SUPABASE_ANON_KEY=your_supabase_anon_key
```

Get these values from your Supabase project dashboard (Settings > API).

### 3. Run Development Server

```bash
npm run dev
```

The application will be available at `http://localhost:4321`

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally

## Project Structure

```
frontend/
├── src/
│   ├── components/      # React components
│   │   └── WorkflowList.tsx
│   ├── layouts/         # Astro layouts
│   │   └── Layout.astro
│   ├── lib/            # Utilities and configs
│   │   └── supabase.ts
│   └── pages/          # Page routes
│       ├── index.astro
│       └── workflows.astro
├── public/             # Static assets
├── astro.config.mjs    # Astro configuration
├── tsconfig.json       # TypeScript configuration
└── package.json
```

## Components

### WorkflowList

A React component that fetches and displays workflow definitions from Supabase. Features:
- Lists all workflow definitions
- Shows workflow details (name, description, version)
- Expandable to show related modules
- Loading and error states

## Deployment

The application is configured to deploy to GitHub Pages automatically via GitHub Actions.

### Manual Deployment

```bash
npm run build
```

The built files will be in the `dist/` directory.

### GitHub Pages

The repository includes a GitHub Actions workflow (`.github/workflows/deploy.yml`) that automatically deploys to GitHub Pages on push to the main branch.

Make sure to:
1. Enable GitHub Pages in repository settings
2. Set source to "GitHub Actions"
3. Add Supabase secrets to repository settings

## Configuration

### Astro Config

The `astro.config.mjs` is configured for GitHub Pages deployment with:
- Base path: `/workflow-play`
- Site: `https://balazs-gaspar.github.io`
- Static output mode
- React integration

Update the `site` and `base` values if deploying to a different location.

## Data Models

The application works with the following Supabase tables:
- `workflow_definitions` - Workflow metadata
- `module_definitions` - Workflow modules
- `task_definitions` - Module tasks
- `task_dependency_definitions` - Task dependencies
- `workflow_instances` - Workflow executions
- `users`, `teams`, `clients` - Supporting data

See `/supabase/README.md` for database schema details.

## Learn More

- [Astro Documentation](https://docs.astro.build)
- [React Documentation](https://react.dev)
- [Supabase Documentation](https://supabase.com/docs)
