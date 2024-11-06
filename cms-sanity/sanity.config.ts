import { defineConfig } from 'sanity'
import { vyuh } from '@vyuh/sanity-plugin-structure'
import { system } from '@vyuh/sanity-schema-system'

export default defineConfig([
  {
    name: 'default',
    title: 'My Blog | Vyuh Demo Get Started CMS',
    basePath: '/',

    projectId: 'w5o9x6m2',
    dataset: 'production',

    plugins: [
      vyuh({
        features: [
          system,
          // ... other features ... //
        ],
      }),
    ],
  },
])
