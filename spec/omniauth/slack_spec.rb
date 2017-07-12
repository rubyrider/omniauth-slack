require 'spec_helper'

RSpec.describe OmniAuth::Slack do
  before do
    @client_id = ''
    @client_secret = ''
    @options = {}
  end

  it 'has a version number' do
    expect(OmniAuth::Slack::VERSION).not_to be nil
  end

  def strategy
    @strategy ||= begin
      args = [@client_id, @client_secret, @options].compact
      OmniAuth::Strategies::Slack.new(nil, *args)
    end
  end

  it 'should return callback url' do
    expect(strategy).to be_nil
  end
end
