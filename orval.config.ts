import { defineConfig } from 'orval';

export default defineConfig({
  backend: {
    input: {
      target: './build/openapi/api.yaml',
    },
     output: {
       target: './build/frontend/api.ts',
       client: "react-query",
     },
   },
})
