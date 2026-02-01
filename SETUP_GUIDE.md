# Complete Setup Guide

This guide walks you through setting up the Workflow Management System with Supabase and deploying it to GitHub Pages.

## Prerequisites

- GitHub account
- Supabase account (free tier is sufficient)
- Node.js 18+ installed locally (for local development)

## Step 1: Set Up Supabase Database

### 1.1 Create a Supabase Project

1. Go to [https://supabase.com](https://supabase.com) and sign in
2. Click "New Project"
3. Choose an organization (or create one)
4. Fill in the project details:
   - **Name**: workflow-management (or your preferred name)
   - **Database Password**: Choose a strong password (save it securely)
   - **Region**: Choose the closest region to you
5. Click "Create new project" and wait for it to be provisioned (1-2 minutes)

### 1.2 Run Database Schema

1. In your Supabase project, navigate to the **SQL Editor** from the sidebar
2. Create a new query
3. Copy the entire contents of `supabase/schema.sql` from this repository
4. Paste it into the SQL Editor
5. Click "Run" to execute the schema
6. You should see a success message confirming all tables were created

### 1.3 Seed the Database

1. In the SQL Editor, create another new query
2. Copy the entire contents of `supabase/seed.sql`
3. Paste it into the SQL Editor
4. Click "Run" to execute the seed data
5. Verify the data was inserted by navigating to the **Table Editor** and checking the tables

### 1.4 Get Your API Keys

1. In your Supabase project, go to **Settings** > **API**
2. You'll need two values:
   - **Project URL**: Copy the URL under "Project URL" (e.g., `https://xxxxxxxxxxxxx.supabase.co`)
   - **anon public key**: Copy the key under "Project API keys" labeled "anon public"

## Step 2: Configure GitHub Repository

### 2.1 Add Supabase Secrets

1. Go to your GitHub repository
2. Navigate to **Settings** > **Secrets and variables** > **Actions**
3. Click "New repository secret"
4. Add the first secret:
   - **Name**: `PUBLIC_SUPABASE_URL`
   - **Secret**: Paste your Supabase Project URL
5. Click "Add secret"
6. Add the second secret:
   - **Name**: `PUBLIC_SUPABASE_ANON_KEY`
   - **Secret**: Paste your Supabase anon public key
7. Click "Add secret"

### 2.2 Enable GitHub Pages

1. In your GitHub repository, go to **Settings** > **Pages**
2. Under "Build and deployment":
   - **Source**: Select "GitHub Actions"
3. Save the settings

## Step 3: Deploy to GitHub Pages

### 3.1 Trigger Deployment

The application will automatically deploy when you push to the `main` branch. However, since the code is already there, you can trigger a manual deployment:

1. Go to the **Actions** tab in your repository
2. Click on the "Deploy to GitHub Pages" workflow
3. Click "Run workflow" > "Run workflow"
4. Wait for the workflow to complete (should take 2-3 minutes)

### 3.2 Access Your Application

Once the deployment is complete:

1. Go to **Settings** > **Pages** in your repository
2. You'll see the URL where your site is published (e.g., `https://username.github.io/workflow-play/`)
3. Click the URL to visit your application

## Step 4: Local Development (Optional)

If you want to run the application locally:

### 4.1 Clone the Repository

```bash
git clone https://github.com/balazs-gaspar/workflow-play.git
cd workflow-play/frontend
```

### 4.2 Install Dependencies

```bash
npm install
```

### 4.3 Configure Environment Variables

1. Copy the example environment file:
   ```bash
   cp .env.example .env
   ```

2. Edit the `.env` file and add your Supabase credentials:
   ```env
   PUBLIC_SUPABASE_URL=https://xxxxxxxxxxxxx.supabase.co
   PUBLIC_SUPABASE_ANON_KEY=your_anon_public_key
   ```

### 4.4 Run Development Server

```bash
npm run dev
```

Visit `http://localhost:4321` to see the application running locally.

### 4.5 Build for Production

```bash
npm run build
```

The built files will be in the `dist/` directory.

## Troubleshooting

### Issue: Workflows page shows "Error loading workflows"

**Possible causes:**
- Supabase URL or API key not configured correctly
- Database tables not created
- Row Level Security policies not set up

**Solutions:**
1. Verify your Supabase secrets in GitHub repository settings
2. Check that you ran the `schema.sql` file completely
3. Verify tables exist in Supabase Table Editor
4. Check browser console for detailed error messages

### Issue: GitHub Pages deployment fails

**Possible causes:**
- Secrets not configured
- Node.js version mismatch

**Solutions:**
1. Ensure both `PUBLIC_SUPABASE_URL` and `PUBLIC_SUPABASE_ANON_KEY` secrets are set
2. Check the Actions log for specific error messages
3. Verify the workflow file syntax in `.github/workflows/deploy.yml`

### Issue: Page shows but no data appears

**Possible causes:**
- Database not seeded
- Incorrect API key
- RLS policies not configured

**Solutions:**
1. Run the `seed.sql` file in Supabase SQL Editor
2. Verify the anon key is correct
3. Check that RLS policies were created (they're in the schema.sql)
4. Open browser console to see API errors

## Next Steps

### Add More Data

You can add more data to your Supabase database:

1. Go to **Table Editor** in Supabase
2. Select a table
3. Click "Insert row" to add new records
4. Or run custom SQL in the SQL Editor

### Customize the Frontend

1. Edit files in `frontend/src/`
2. Modify components, layouts, or pages
3. Run `npm run build` to test
4. Push changes to trigger automatic deployment

### Add Authentication (Future Enhancement)

To add authentication later:

1. Enable authentication in Supabase
2. Update RLS policies to restrict write access
3. Add login/signup components in the frontend
4. Update API calls to use authenticated client

## Resources

- [Astro Documentation](https://docs.astro.build)
- [Supabase Documentation](https://supabase.com/docs)
- [React Documentation](https://react.dev)
- [GitHub Pages Documentation](https://docs.github.com/pages)

## Support

For issues specific to this project:
- Check the [repository issues](https://github.com/balazs-gaspar/workflow-play/issues)
- Review the READMEs in `frontend/` and `supabase/` directories
- Check the browser console for error messages
- Review Supabase project logs in the Dashboard
