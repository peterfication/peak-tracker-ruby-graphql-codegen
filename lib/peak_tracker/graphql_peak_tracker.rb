# This file has been auto-generated. Don't edit it manually but run
#
#   yarn graphql:codegen

# This is just for Ruby auto loading to be happy
module GraphqlPeakTracker
end

module PeakTracker
  module Types
    module Enums
      class PeakSortField < Customer::Types::BaseEnum
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
      class SortOrder < Customer::Types::BaseEnum
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
    class PageInfo < Customer::Types::BaseObject
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
    class Peak < Customer::Types::BaseObject
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
    class PeakConnection < Customer::Types::BaseObject
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
    class PeakEdge < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakEdge"
      description ":peak edge"

      field :cursor, GraphQL::Types::String, null: false, description: "Cursor"
      field :node, PeakTracker::Types::Peak, null: true, description: ":peak node"
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterElevation < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterElevation"
      description ""

      field :eq, GraphQL::Types::Int, null: true, description: ""
      field :greater_than, GraphQL::Types::Int, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :in, [GraphQL::Types::Int], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Int, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :not_eq, GraphQL::Types::Int, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterGooglePlacesId < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterGooglePlacesId"
      description ""

      field :eq, GraphQL::Types::String, null: true, description: ""
      field :greater_than, GraphQL::Types::String, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :in, [GraphQL::Types::String], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::String, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :not_eq, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterId < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterId"
      description ""

      field :eq, GraphQL::Types::ID, null: true, description: ""
      field :greater_than, GraphQL::Types::ID, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::ID, null: true, description: ""
      field :in, [GraphQL::Types::ID], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::ID, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::ID, null: true, description: ""
      field :not_eq, GraphQL::Types::ID, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterInput < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterInput"
      description ""

      field :and, [PeakTracker::Types::PeakFilterInput], null: true, description: ""
      field :elevation, PeakTracker::Types::PeakFilterElevation, null: true, description: ""
      field :google_places_id, PeakTracker::Types::PeakFilterGooglePlacesId, null: true, description: ""
      field :id, PeakTracker::Types::PeakFilterId, null: true, description: ""
      field :latitude, PeakTracker::Types::PeakFilterLatitude, null: true, description: ""
      field :longitude, PeakTracker::Types::PeakFilterLongitude, null: true, description: ""
      field :name, PeakTracker::Types::PeakFilterName, null: true, description: ""
      field :not, [PeakTracker::Types::PeakFilterInput], null: true, description: ""
      field :or, [PeakTracker::Types::PeakFilterInput], null: true, description: ""
      field :osm_id, PeakTracker::Types::PeakFilterOsmId, null: true, description: ""
      field :scale_count, PeakTracker::Types::PeakFilterScaleCount, null: true, description: ""
      field :scaled_by_user, PeakTracker::Types::PeakFilterScaledByUser, null: true, description: ""
      field :slug, PeakTracker::Types::PeakFilterSlug, null: true, description: ""
      field :wikidata_id, PeakTracker::Types::PeakFilterWikidataId, null: true, description: ""
      field :wikipedia, PeakTracker::Types::PeakFilterWikipedia, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterLatitude < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterLatitude"
      description ""

      field :eq, GraphQL::Types::Float, null: true, description: ""
      field :greater_than, GraphQL::Types::Float, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Float, null: true, description: ""
      field :in, [GraphQL::Types::Float], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Float, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Float, null: true, description: ""
      field :not_eq, GraphQL::Types::Float, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterLongitude < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterLongitude"
      description ""

      field :eq, GraphQL::Types::Float, null: true, description: ""
      field :greater_than, GraphQL::Types::Float, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Float, null: true, description: ""
      field :in, [GraphQL::Types::Float], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Float, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Float, null: true, description: ""
      field :not_eq, GraphQL::Types::Float, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterName < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterName"
      description ""

      field :eq, GraphQL::Types::String, null: true, description: ""
      field :greater_than, GraphQL::Types::String, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :in, [GraphQL::Types::String], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::String, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :not_eq, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterOsmId < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterOsmId"
      description ""

      field :eq, GraphQL::Types::Int, null: true, description: ""
      field :greater_than, GraphQL::Types::Int, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :in, [GraphQL::Types::Int], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Int, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :not_eq, GraphQL::Types::Int, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterScaleCount < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterScaleCount"
      description ""

      field :eq, GraphQL::Types::Int, null: true, description: ""
      field :greater_than, GraphQL::Types::Int, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :in, [GraphQL::Types::Int], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Int, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Int, null: true, description: ""
      field :not_eq, GraphQL::Types::Int, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterScaledByUser < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterScaledByUser"
      description ""

      field :eq, GraphQL::Types::Boolean, null: true, description: ""
      field :greater_than, GraphQL::Types::Boolean, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::Boolean, null: true, description: ""
      field :in, [GraphQL::Types::Boolean], null: true, description: ""
      field :input, PeakTracker::Types::PeakScaledByUserFieldInput, null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::Boolean, null: true, description: ""
      field :not_eq, GraphQL::Types::Boolean, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterSlug < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterSlug"
      description ""

      field :eq, GraphQL::Types::String, null: true, description: ""
      field :greater_than, GraphQL::Types::String, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :in, [GraphQL::Types::String], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::String, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :not_eq, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterWikidataId < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterWikidataId"
      description ""

      field :eq, GraphQL::Types::String, null: true, description: ""
      field :greater_than, GraphQL::Types::String, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :in, [GraphQL::Types::String], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::String, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :not_eq, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakFilterWikipedia < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakFilterWikipedia"
      description ""

      field :eq, GraphQL::Types::String, null: true, description: ""
      field :greater_than, GraphQL::Types::String, null: true, description: ""
      field :greater_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :in, [GraphQL::Types::String], null: true, description: ""
      field :is_nil, GraphQL::Types::Boolean, null: true, description: ""
      field :less_than, GraphQL::Types::String, null: true, description: ""
      field :less_than_or_equal, GraphQL::Types::String, null: true, description: ""
      field :not_eq, GraphQL::Types::String, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakScaledByUserFieldInput < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakScaledByUserFieldInput"
      description ""

      field :user_id, GraphQL::Types::ID, null: false, description: ""
    end
  end
end

module PeakTracker
  module Types
    class PeakSortInput < Customer::Types::BaseObject
      graphql_name "PeakTrackerPeakSortInput"
      description ""

      field :field, PeakTracker::Types::Enums::PeakSortField, null: false, description: ""
      field :order, PeakTracker::Types::SortOrder, null: true, description: ""
      field :scaled_by_user_input, PeakTracker::Types::PeakScaledByUserFieldInput, null: true, description: ""
    end
  end
end

module PeakTracker
  module Types
    class User < Customer::Types::BaseObject
      graphql_name "PeakTrackerUser"
      description ""

      field :email, GraphQL::Types::String, null: false, description: ""
      field :id, GraphQL::Types::ID, null: false, description: ""
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
          definition = "PeakTracker::Types::Arguments::#{constant}".constantize[field][arg]
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
    end
  end
end
# rubocop:enable Style/TrailingCommaInHashLiteral
