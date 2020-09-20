require "spec_helper"

RSpec.describe Reggora do

  it "should return the client object for the valid version" do
    reggora = Reggora::Client.new(api_key: "test", api_version: "2014-11-25")
    expect(reggora).to be_instance_of(Reggora::Client)
  end

  it "should pass the token to the resource" do
    expect(Reggora::Client.new(token: API_TOKEN, api_integration_key: API_INTEGRATION_KEY).config[:token]).to eq 'atoken'
  end

  it "should pass the api integration key to the resource" do
    expect(Reggora::Client.new(token: API_TOKEN, api_integration_key: API_INTEGRATION_KEY).config[:api_integration_key]).to eq 'anapikey'
  end

  it "should raise an error if no API key is supplied" do
    expect{Reggora::Client.new}.to raise_error(ArgumentError)
  end

  xit "should handle API errors gracefully" do
    reggora = Reggora::Client.new(token: API_TOKEN, api_integration_key: API_INTEGRATION_KEY)
    expect{reggora.addresses.list}.to raise_error(Reggora::InvalidRequestError)
  end

  it "should include the raw response" do
    reggora = Reggora::Client.new(token: API_TOKEN, api_integration_key: API_INTEGRATION_KEY)
    # TODO : Make reggora request after update endpoints
    result = reggora.addresses.list
    expect(result._response.headers.include?(:content_type))
  end

  it "should include response headers for errors" do
    reggora = Reggora::Client.new(token: API_TOKEN, api_integration_key: API_INTEGRATION_KEY)

    begin
      # TODO : Make reggora request after update endpoints
      # reggora.postcards.create(bad_param: "bad_value")
    rescue Reggora::InvalidRequestError => e
      assert e._response.headers.include?(:content_type)
    end
  end
end
