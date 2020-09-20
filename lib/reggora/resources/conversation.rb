require "reggora/resources/resource_base"

module Reggora
  module Resources
    class Conversation < Reggora::Resources::ResourceCrud
      # {'message': 'Hi there!'}

      private

      def endpoint_url
        "#{base_url}/lender/conversation"
      end

      def resource_url(resource_id)
        "#{base_url}/lender/conversation/#{resource_id}"
      end
    end
  end
end
