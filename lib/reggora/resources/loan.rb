require "reggora/resources/resource_base"

module Reggora
  module Resources
    class Loan < Reggora::Resources::ResourceBase
      # Create loan params
      #
      # body = {
      #   "loan_number": "2",
      #   "loan_officer": "5b5b19d3c643b3000f8f2857",
      #   "appraisal_type": "Refinance",
      #   "due_date": "2018-12-19T12:00:00Z",
      #   "subject_property_address": "100 Mass Ave",
      #   "subject_property_city": "Boston",
      #   "subject_property_state": "MA",
      #   "subject_property_zip": "02192",
      #   "case_number": "10029MA",
      #   "loan_type": "FHA"
      # }

      private

      def endpoint_url
        "#{base_url}/lender/loans/"
      end

      def resource_url(resource_id)
        "#{base_url}/lender/loan/#{resource_id}"
      end

    end
  end
end
