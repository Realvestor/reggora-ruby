require "reggora/resources/resource_base"

module Reggora
  module Resources
    class Evault < Reggora::Resources::ResourceCrud
      # Get a document
      def document(resource_id, document_id)
        request = {
          method: :get,
          url: "#{endpoint_url(group_id)}/#{document_id}",
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      # {
      #   "id": "24bab39a-4404-11e8-ba10-02420a050006"
      #   "file": File, # Required
      # }
      def upload
        request = {
          method: :post,
          url: endpoint_url(group_id),
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      def p_and_s
        request = {
          method: :post,
          url: "#{base_url}/lender/p_and_s",
          body: body,
          headers: headers,
          query: query,
        }

        submit request
      end

      # body = {
      #   'id': '524523ff2d2d223d23',
      #   'document_id': '00a1eb9e-ba6a-11e9-b584-0242ac120002',
      # }
      def destroy(body={}, headers={}, query={})
        request = {
          method: :delete,
          url: endpoint_url,
          body: body,
        }

        submit request
      end

      private

      def endpoint_url
        "#{base_url}/lender/evault"
      end

      def resource_url(resource_id)
        "#{base_url}/lender/evault/#{resource_id}"
      end
    end
  end
end
