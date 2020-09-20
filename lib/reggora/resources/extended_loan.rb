require "reggora/resources/resource_base"

module Reggora
  module Resources
    class ExtendedLoan < Reggora::Resources::ResourceCrud
      # Edit an extended loan
      #
      # body = {
      #   "loan": {
      #     "Loan Number":"12345",
      #     "Borrower Name":"Michael Jordan",
      #     "Subject Property City":"Boston",
      #     "Subject Property State":"MA",
      #     "Subject Property Address":"1 Main St.",
      #     "Appraisal Due Date":"2/20/2020",
      #     "Sellers Agent":"John Agent",
      #     "Sellers Agent Phone":"5551112222",
      #     "Sellers Agent E-mail":"sellersagent@gmail.com",
      #     "ULDD Attachment Type":"Detached",
      #     "Occupancy (P/S/I)":"Primary",
      #     "Loan Type":"Conventional",
      #     "Commit Due":"2/25/20"
      #   }
      # }

      private

      def endpoint_url
        "#{base_url}/lender/extended_loan/"
      end

      def resource_url(resource_id)
        "#{base_url}/lender/extended_loan/#{resource_id}"
      end

    end
  end
end
