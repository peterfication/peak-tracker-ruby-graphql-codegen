import type { CodegenConfig } from '@graphql-codegen/cli';

const config: CodegenConfig = {
  overwrite: true,
  schema: [
    {
      'https://peak-tracker.com/gql': {},
    },
  ],
  generates: {
    './graphql.schema.json': {
      plugins: ['introspection'],
    },
    './lib/peak_tracker/graphql_peak_tracker.rb': {
      plugins: ['graphql-codegen-peak-tracker.js'],
    },
  },
};

export default config;
