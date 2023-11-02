require "graphql/client"
require "graphql/client/http"

require_relative "client/config"

module PeakTracker
  ##
  # The PeakTracker GraphQL client that handles the GraphQL requests.
  class Client
    class << self
      def read_file(filename)
        File.read(File.join(File.dirname(__FILE__), "queries", filename))
      end

      def parse(filename)
        new.parse(read_file(filename))
      end
    end

    def initialize(config: Config.new)
      @config = config
    end

    def query(query, variables: {}, context: {})
      client.query(query, variables:, context:)
    end

    private

    delegate :parse, to: :client

    def client
      @client ||=
        GraphQL::Client.new(
          schema: @config.graphql_schema,
          execute: @config.graphql_endpoint
        )
    end
  end
end
