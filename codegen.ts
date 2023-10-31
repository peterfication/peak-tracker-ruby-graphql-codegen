import type { CodegenConfig } from "@graphql-codegen/cli"

const config: CodegenConfig = {
  overwrite: true,
  schema: [
    {
      "https://peak-tracker.com/gql": {},
    },
  ],
  generates: {
    "./graphql.schema.json": {
      plugins: ["introspection"],
    },
  },
}

export default config
