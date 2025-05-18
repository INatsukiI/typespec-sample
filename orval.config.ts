import { defineConfig } from 'orval';

export default defineConfig({
  backend: {
    input: {
      target: './generated/openapi/api.yaml',
    },
     output: {
       target: './generated/frontend/api.ts',
       client: "react-query",
     },
   },
})
