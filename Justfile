# List all commands
default:
  just --list

# Run codgen and schema dump
graphql: graphql-codegen graphql-schema-dump

# Generate Ruby types from PeakTracker GraphQL schema
graphql-codegen:
  yarn graphql:codegen

# Dump the proxy GraphQL schema
graphql-schema-dump:
  ruby schema_dump.rb
