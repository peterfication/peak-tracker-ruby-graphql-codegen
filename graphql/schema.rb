require "graphql"

require_relative "types/query"

class Schema < GraphQL::Schema
  query Types::Query
end
