# Workflow Management System - Frontend

This is a Vite + React + TypeScript frontend application that connects to Supabase to display workflow management data.

## Features

- ⚡ Built with [Vite](https://vitejs.dev) for fast development and optimal performance
- ⚛️ React 18 with TypeScript for type-safe development
- 🗄️ Supabase integration for real-time data
- 🔀 React Router for client-side routing
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
VITE_SUPABASE_URL=your_supabase_project_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key
```

Get these values from your Supabase project dashboard (Settings > API).

### 3. Run Development Server

```bash
npm run dev
```

The application will be available at `http://localhost:5173`

## Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build locally

## Project Structure

```
frontend/
├── src/
│   ├── components/      # React components
│   │   ├── Layout.tsx
│   │   ├── Layout.css
│   │   └── WorkflowList.tsx
│   ├── lib/            # Utilities and configs
│   │   └── supabase.ts
│   ├── pages/          # Page components
│   │   ├── Home.tsx
│   │   ├── Home.css
│   │   └── Workflows.tsx
│   ├── App.tsx         # Main app component with routing
│   ├── main.tsx        # Entry point
│   └── index.css       # Global styles
├── public/             # Static assets
├── index.html          # HTML template
├── vite.config.ts      # Vite configuration
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

### Layout

Main layout component that includes:
- Header with navigation
- Responsive navigation menu
- Active route highlighting

## Routing

The application uses React Router for client-side routing:
- `/` - Home page with feature overview
- `/workflows` - Workflows page with data from Supabase

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
3. Add Supabase secrets to repository settings:
   - `VITE_SUPABASE_URL`
   - `VITE_SUPABASE_ANON_KEY`

## Configuration

### Vite Config

The `vite.config.ts` is configured for GitHub Pages deployment with:
- Base path: `/workflow-play`
- Output directory: `dist`
- React plugin with Fast Refresh

Update the `base` value if deploying to a different location.

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

- [Vite Documentation](https://vitejs.dev)
- [React Documentation](https://react.dev)
- [React Router Documentation](https://reactrouter.com)
- [Supabase Documentation](https://supabase.com/docs)
- [TypeScript Documentation](https://www.typescriptlang.org/docs/)
