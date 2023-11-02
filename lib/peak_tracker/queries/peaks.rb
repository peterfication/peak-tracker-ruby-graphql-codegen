require_relative "../client"

module PeakTracker
  module Queries
    ##
    # Get peaks
    class Peaks
      PEAKS_QUERY = PeakTracker::Client.parse("peaks.graphql")

      def initialize(api_client: PeakTracker::Client.new)
        @api_client = api_client
      end

      def query
        @api_client.query(PEAKS_QUERY::Peaks)
      end
    end
  end
end
