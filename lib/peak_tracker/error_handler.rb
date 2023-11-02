module PeakTracker
  ##
  # Handle errors from GraphQL responses.
  class ErrorHandler
    ##
    # An error that can happen in a GraphQL call.
    class Error < StandardError
    end

    def handle(errors)
      return if errors.empty?

      message = errors.details["data"].pluck("message").join(", ")

      raise Error.new(message:)
    end
  end
end
