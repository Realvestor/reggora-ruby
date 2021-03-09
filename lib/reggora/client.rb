require "reggora/resources/loans"

module Reggora
  class Client

    attr_reader :config

    def initialize(config = nil)
      if config.nil? || config[:token].nil? || Reggora::Client.token.nil?
        raise ArgumentError.new(":token is a required argument to initialize Reggora")
      end

      if config.nil? || config[:api_integration_key].nil? || Reggora::Client.api_integration_key.nil?
        raise ArgumentError.new(":api_integration_key is a required argument to initialize Reggora")
      end

      if config.nil? || config[:environment].nil? || Reggora::Client.environment.nil?
        raise ArgumentError.new(":environment is a required argument to initialize Reggora")
      end

      @config = config
    end

    def self.authorize(username:, password:)
      Reggora::Resources::Auth.new(
        username: username,
        password: password
      ).authorize
    end

    # Get all loans
    # Get loan
    # Delete loan
    # Create loan
    # Edit loan
    def loan
      Reggora::Resources::Loan.new(config)
    end

    # Create Extended Loans
    # Edit Extended Loans
    # Get Extended Loan Schema
    def extended_loan
      Reggora::Resources::ExtendedLoan.new(config)
    end

    # Get all orders
    # Get order
    # Cancel order
    # Create an order
    # Edit an order
    # Place order on hold
    # Remove order hold
    def orders
      Reggora::Resources::Order.new(config)
    end

    # Conversation by ID
    # Send Message
    def conversation
      Reggora::Resources::Conversation.new(config)
    end

    # evault by ID
    # Get document
    # Upload document
    # Upload P & S
    # Delete document
    def evault
      Reggora::Resources::Evault.new(config)
    end

    # Get all products
    # Get product
    # Delete product
    # Create a product
    # Edit a product
    def product
      Reggora::Resources::Product.new(config)
    end

    # Get all submissions
    # Download submission documents
    # Get submission appraisal data
    def submission
      Reggora::Resources::Submission.new(config)
    end

    # Get all users
    # Get user by ID
    # Invite user
    # Create user
    # Edit user
    # Delete user
    def user
      Reggora::Resources::User.new(config)
    end

    # Get all vendors
    # Get vendors by zone
    # Get vendors by branch
    # Get vendor by ID
    # Add vendor
    # Edit vendor
    # Delete vendor
    def vendor
      Reggora::Resources::Vendor.new(config)
    end

    # Send payment app
    # Send scheduling app
    # Consumer application link
    def schedule
      Reggora::Resources::SchedulePayment.new(config)
    end

  end
end
