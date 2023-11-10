require_relative "base_object"
require_relative "base_input"
require_relative "base_enum"
require_relative "../../lib/peak_tracker/graphql_peak_tracker"

module Types
  class Query < BaseObject
    description "The query root of the GraphQL API"

    field(
      :peaks,
      PeakTracker::Types::PeakConnection,
      null: false,
      description: PeakTracker::Types::PeakConnection.description
    ) do
      PeakTracker::Types::Arguments.define_arguments(self, :ROOT_QUERY_TYPE, :peaks, %i[filter scaled_by_actor sort])
    end
  end
end
