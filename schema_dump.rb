require "graphql/rake_task"
require "rake"

GraphQL::RakeTask.new(
  idl_outfile: "graphql/schema.graphql",
  json_outfile: "graphql/schema.json",
  load_schema: lambda { |_task|
    require_relative "graphql/schema"
    Schema
  }
)

Rake::Task["graphql:schema:dump"].invoke
