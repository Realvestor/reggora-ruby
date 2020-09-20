

module Reggora
  module Resources
    class Auth
      attr_reader :username, :password

      def initialize(username:, password:)
        @username = username
        @password = password
      end

      def authorize
        request = {
          method: :post,
          url: endpoint_url,
          body: { 'username': username, 'password': password },
        }

        submit request
      end

      private

      def base_url
        "https://#{Reggora::Client.environment}.reggora.io"
      end

      def endpoint_url
        "#{base_url}/lender/auth"
      end
    end
  end
end
