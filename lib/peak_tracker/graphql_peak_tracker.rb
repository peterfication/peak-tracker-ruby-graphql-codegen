# This file has been auto-generated. Don't edit it manually but run
#
#   yarn graphql:codegen

# This is just for Ruby auto loading to be happy
module GraphqlPeakTracker
end

module PeakTracker
  module Types
    module Enums
      class PeakSortField < ::Types::BaseEnum
        graphql_name "PeakTrackerPeakSortField"
        description ""

        value "ELEVATION", "null"
        value "GOOGLE_PLACES_ID", "null"
        value "ID", "null"
        value "LATITUDE", "null"
        value "LONGITUDE", "null"
        value "NAME", "null"
        value "OSM_ID", "null"
        value "SCALED_BY_USER", "null"
        value "SCALE_COUNT", "null"
        value "SLUG", "null"
        value "WIKIDATA_ID", "null"
        value "WIKIPEDIA", "null"
      end
    end
  end
end

module PeakTracker
  module Types
    module Enums
      class SortOrder < ::Types::BaseEnum
        graphql_name "PeakTrackerSortOrder"
        description ""

        value "ASC", "null"
        value "ASC_NULLS_FIRST", "null"
        value "ASC_NULLS_LAST", "null"
        value "DESC", "null"
        value "DESC_NULLS_FIRST", "null"
        value "DESC_NULLS_LAST", "null"
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterLatitude < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterLatitude"
        description ""

        argument :eq, GraphQL::Types::Float, required: true, description: ""
        argument :greater_than, GraphQL::Types::Float, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Float, required: true, description: ""
        argument :in, [GraphQL::Types::Float], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Float, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Float, required: true, description: ""
        argument :not_eq, GraphQL::Types::Float, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterLongitude < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterLongitude"
        description ""

        argument :eq, GraphQL::Types::Float, required: true, description: ""
        argument :greater_than, GraphQL::Types::Float, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Float, required: true, description: ""
        argument :in, [GraphQL::Types::Float], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Float, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Float, required: true, description: ""
        argument :not_eq, GraphQL::Types::Float, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterName < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterName"
        description ""

        argument :eq, GraphQL::Types::String, required: true, description: ""
        argument :greater_than, GraphQL::Types::String, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :in, [GraphQL::Types::String], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::String, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :not_eq, GraphQL::Types::String, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterOsmId < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterOsmId"
        description ""

        argument :eq, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :in, [GraphQL::Types::Int], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Int, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :not_eq, GraphQL::Types::Int, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakScaledByUserFieldInput < ::Types::BaseInput
        graphql_name "PeakTrackerPeakScaledByUserFieldInput"
        description ""

        argument :user_id, GraphQL::Types::ID, required: false, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterScaleCount < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterScaleCount"
        description ""

        argument :eq, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :in, [GraphQL::Types::Int], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Int, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :not_eq, GraphQL::Types::Int, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterScaledByUser < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterScaledByUser"
        description ""

        argument :eq, GraphQL::Types::Boolean, required: true, description: ""
        argument :greater_than, GraphQL::Types::Boolean, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Boolean, required: true, description: ""
        argument :in, [GraphQL::Types::Boolean], required: true, description: ""
        argument :input, PeakTracker::Types::Inputs::PeakScaledByUserFieldInput, required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Boolean, required: true, description: ""
        argument :not_eq, GraphQL::Types::Boolean, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterSlug < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterSlug"
        description ""

        argument :eq, GraphQL::Types::String, required: true, description: ""
        argument :greater_than, GraphQL::Types::String, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :in, [GraphQL::Types::String], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::String, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :not_eq, GraphQL::Types::String, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterWikidataId < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterWikidataId"
        description ""

        argument :eq, GraphQL::Types::String, required: true, description: ""
        argument :greater_than, GraphQL::Types::String, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :in, [GraphQL::Types::String], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::String, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :not_eq, GraphQL::Types::String, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterWikipedia < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterWikipedia"
        description ""

        argument :eq, GraphQL::Types::String, required: true, description: ""
        argument :greater_than, GraphQL::Types::String, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :in, [GraphQL::Types::String], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::String, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :not_eq, GraphQL::Types::String, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterElevation < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterElevation"
        description ""

        argument :eq, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than, GraphQL::Types::Int, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :in, [GraphQL::Types::Int], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::Int, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::Int, required: true, description: ""
        argument :not_eq, GraphQL::Types::Int, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterGooglePlacesId < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterGooglePlacesId"
        description ""

        argument :eq, GraphQL::Types::String, required: true, description: ""
        argument :greater_than, GraphQL::Types::String, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :in, [GraphQL::Types::String], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::String, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::String, required: true, description: ""
        argument :not_eq, GraphQL::Types::String, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterId < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterId"
        description ""

        argument :eq, GraphQL::Types::ID, required: true, description: ""
        argument :greater_than, GraphQL::Types::ID, required: true, description: ""
        argument :greater_than_or_equal, GraphQL::Types::ID, required: true, description: ""
        argument :in, [GraphQL::Types::ID], required: true, description: ""
        argument :is_nil, GraphQL::Types::Boolean, required: true, description: ""
        argument :less_than, GraphQL::Types::ID, required: true, description: ""
        argument :less_than_or_equal, GraphQL::Types::ID, required: true, description: ""
        argument :not_eq, GraphQL::Types::ID, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakFilterInput < ::Types::BaseInput
        graphql_name "PeakTrackerPeakFilterInput"
        description ""

        argument :and, [PeakTracker::Types::Inputs::PeakFilterInput], required: true, description: ""
        argument :elevation, PeakTracker::Types::Inputs::PeakFilterElevation, required: true, description: ""
        argument :google_places_id, PeakTracker::Types::Inputs::PeakFilterGooglePlacesId, required: true, description: ""
        argument :id, PeakTracker::Types::Inputs::PeakFilterId, required: true, description: ""
        argument :latitude, PeakTracker::Types::Inputs::PeakFilterLatitude, required: true, description: ""
        argument :longitude, PeakTracker::Types::Inputs::PeakFilterLongitude, required: true, description: ""
        argument :name, PeakTracker::Types::Inputs::PeakFilterName, required: true, description: ""
        argument :not, [PeakTracker::Types::Inputs::PeakFilterInput], required: true, description: ""
        argument :or, [PeakTracker::Types::Inputs::PeakFilterInput], required: true, description: ""
        argument :osm_id, PeakTracker::Types::Inputs::PeakFilterOsmId, required: true, description: ""
        argument :scale_count, PeakTracker::Types::Inputs::PeakFilterScaleCount, required: true, description: ""
        argument :scaled_by_user, PeakTracker::Types::Inputs::PeakFilterScaledByUser, required: true, description: ""
        argument :slug, PeakTracker::Types::Inputs::PeakFilterSlug, required: true, description: ""
        argument :wikidata_id, PeakTracker::Types::Inputs::PeakFilterWikidataId, required: true, description: ""
        argument :wikipedia, PeakTracker::Types::Inputs::PeakFilterWikipedia, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    module Inputs
      class PeakSortInput < ::Types::BaseInput
        graphql_name "PeakTrackerPeakSortInput"
        description ""

        argument :field, PeakTracker::Types::Enums::PeakSortField, required: false, description: ""
        argument :order, PeakTracker::Types::Enums::SortOrder, required: true, description: ""
        argument :scaled_by_user_input, PeakTracker::Types::Inputs::PeakScaledByUserFieldInput, required: true, description: ""
      end
    end
  end
end

module PeakTracker
  module Types
    class PageInfo < ::Types::BaseObject
      graphql_name "PeakTrackerPageInfo"
      description "A relay page info"

      field :end_cursor, GraphQL::Types::String, null: true, description: "When paginating forwards, the cursor to continue"
      field :has_next_page, GraphQL::Types::Boolean, null: false, description: "When paginating forwards, are there more items?"
      field :has_previous_page, GraphQL::Types::Boolean, null: false, description: "When paginating backwards, are there more items?"
      field :start_cursor, GraphQL::Types::String, null: true, description: "When paginating backwards, the cursor to continue"
    end
  end
end

module PeakTracker
  module Types
    class User < ::Types::BaseObject
      graphql_name "PeakTrackerUser"
      description ""

      field :email, GraphQL::Types::String, null: false, description: ""
      field :id, GraphQL::Types::ID, null: false, description: ""
    end
  end
end

module PeakTracker
  module Types
    class Peak < ::Types::BaseObject
      graphql_name "PeakTrackerPeak"
      description ""

      field :elevation, GraphQL::Types::Int, null: false, description: ""
      field :google_places_id, GraphQL::Types::String, null: true, description: ""
      field :id, GraphQL::Types::ID, null: false, description: ""
      field :latitude, GraphQL::Types::Float, null: false, description: ""
      field :longitude, GraphQL::Types::Float, null: false, description: ""
      field :name, GraphQL::Types::String, null: false, description: ""
      field :osm_id, GraphQL::Types::Int, null: false, description: ""
      field :scale_count, GraphQL::Types::Int, null: false, description: ""
      field :scaled_by_user, GraphQL::Types::Boolean, null: true, description: ""
      field :slug, GraphQL::Types::String, null: false, description: ""
      field :wikidata_id, GraphQL::Types::String, null: true, description: ""
      field :wikipedia, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakEdge < ::Types::BaseObject
      graphql_name "PeakTrackerPeakEdge"
      description ":peak edge"

      field :cursor, GraphQL::Types::String, null: false, description: "Cursor"
      field :node, PeakTracker::Types::Peak, null: true, description: ":peak node"
    end
  end
end

module PeakTracker
  module Types
    class PeakConnection < ::Types::BaseObject
      graphql_name "PeakTrackerPeakConnection"
      description ":peak connection"

      field :count, GraphQL::Types::Int, null: true, description: "Total count on all pages"
      field :edges, [PeakTracker::Types::PeakEdge], null: true, description: ":peak edges"
      field :page_info, PeakTracker::Types::PageInfo, null: false, description: "Page information"
    end
  end
end

module PeakTracker
  module Types
    class RootQueryType < ::Types::BaseObject
      graphql_name "PeakTrackerRootQueryType"
      description ""

      field :current_user, PeakTracker::Types::User, null: true, description: ""
      field :peak, PeakTracker::Types::Peak, null: true, description: ""
      field :peaks, PeakTracker::Types::PeakConnection, null: true, description: ""
    end
  end
end

# rubocop:disable Style/TrailingCommaInHashLiteral
module PeakTracker
  module Types
    module Arguments
      ##
      # Example usage:
      # field(...) do
      #   PeakTracker::Types::Arguments.define_arguments(self, :PEAK, :scaled_by_user, %i[user_id])
      # end
      def self.define_arguments(type, constant, field, keys)
        keys.each do |arg|
          definition = Object.const_get("PeakTracker::Types::Arguments::#{constant}")[field][arg]
          type.argument(
            arg,
            definition[:type],
            required: definition[:required],
            description: definition[:description]
          )
        end
      end

      PEAK = {
        scaled_by_user: {
          user_id: {
            type: GraphQL::Types::ID,
            required: true,
            description: "",
          },
        },
      }.freeze

      ROOT_QUERY_TYPE = {
        peaks: {
          filter: {
            type: PeakTracker::Types::Inputs::PeakFilterInput,
            required: false,
            description: "A filter to limit the results",
          },
          scaled_by_actor: {
            type: GraphQL::Types::Boolean,
            required: false,
            description: "Show only peaks scaled by the current actor (Not implemented yet)",
          },
          sort: {
            type: [PeakTracker::Types::Inputs::PeakSortInput],
            required: false,
            description: "How to sort the records in the response",
          },
        },
      }.freeze
    end
  end
end
# rubocop:enable Style/TrailingCommaInHashLiteral
