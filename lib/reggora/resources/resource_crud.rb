require "reggora/resources/resource_base"

module Reggora
  module Resources
    class ResourceCrud < Reggora::Resources::ResourceBase

      attr_reader :config

      def initialize(config)
        super(config)
      end

      def list(query={})
        request = {
          method: :get,
          url: endpoint_url,
          query: query
        }

        submit request
      end

      def find(resource_id)
        request = {
          method: :get,
          url: resource_url(resource_id)
        }

        submit request
      end

      def create(body={}, headers={}, query={})
        request = {
          method: :post,
          url: endpoint_url(group_id),
          body: body,
          headers: headers,
          query: query
        }

        submit request
      end

      def update(body={}, headers={}, query={})
        request = {
          method: :put,
          url: endpoint_url(group_id),
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      def destroy(resource_id)
        request = {
          method: :delete,
          url: resource_url(resource_id)
        }

        submit request
      end

      private

      def endpoint_url
        raise NotImplementedError, 'endpoint_url not implemented. Please implement in subclass'
      end

      def resource_url(resource_id)
        raise NotImplementedError, 'resource_url not implemented. Please implement in subclass'
      end

    end
  end
end
