require "reggora/resources/resource_base"

module Reggora
  module Resources
    class Order < Reggora::Resources::ResourceCrud
      # Cancel an order
      def cancel(resource_id)
        request = {
          method: :delete,
          url: "#{base_url}/lender/order/#{resource_id}/cancel"
        }

        submit request
      end

      # Place a hold on the order
      def place_hold
        request = {
          method: :put,
          url: "#{endpoint_url(group_id)}/hold",
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      # Remove a hold from an order
      def remove_hold
        request = {
          method: :put,
          url: "#{endpoint_url(group_id)}/unhold",
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      private

      def endpoint_url
        "#{base_url}/lender/orders"
      end

      def resource_url(resource_id)
        "#{base_url}/lender/order/#{resource_id}"
      end

    end
  end
end
