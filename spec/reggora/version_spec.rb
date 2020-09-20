require "spec_helper"

RSpec.describe Version do
  describe 'Version::VERSION' do
    it 'returns the version number' do
      expect(Reggora::Version::VERSION).to eq '0.0.1'
    end
  end
end
