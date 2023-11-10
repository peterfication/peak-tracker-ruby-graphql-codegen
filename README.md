# PeakTracker Ruby codegen

Example project to demonstrate GraphQL codegen in a Ruby project.

## Commands

Commands are defined in the [`Justfile`](Justfile) and can be listed with [`just`](https://github.com/casey/just).

```
just graphql
```

## What it does

The first step retrieves the GraphQL schema from the [Peak Tracker backend](https://github.com/peterfication/peak_tracker_backend/) and saves it in [`graphql.schema.json`](./graphql.schema.json).

The main magic happens in [`graphql-codegen-peak-tracker.js`](./graphql-codegen-peak-tracker.js) which generates [`graphql_peak_tracker.rb`](./lib/peak_tracker/graphql_peak_tracker.rb). The generated Ruby classes are then used in the [`graphql`](./graphql) folder for the GraphQL schema.

The [Ruby query class](./graphql/types/query.rb) of this project just defines one field:

```ruby
field(
  :peaks,
  PeakTracker::Types::PeakConnection,
  null: false,
  description: PeakTracker::Types::PeakConnection.description
) do
  PeakTracker::Types::Arguments.define_arguments(self, :ROOT_QUERY_TYPE, :peaks, %i[filter scaled_by_actor sort])
end
```

But the [resulting GraphQL schema](./graphql/schema.json) contains all arguments and sub-fields from the [original schema](./graphql.schema.json).
