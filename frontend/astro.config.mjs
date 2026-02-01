import { defineConfig } from 'astro/config';
import react from '@astrojs/react';

// https://astro.build/config
export default defineConfig({
  site: 'https://balazs-gaspar.github.io',
  base: '/workflow-play',
  integrations: [react()],
  output: 'static',
});
