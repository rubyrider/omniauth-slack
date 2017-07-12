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
    expect(strategy).to be_an_instance_of(OmniAuth::Strategies::Slack)
  end

  it 'should have valid oauth token' do
    expect(strategy.client.options[:token_url]).to be == 'api/oauth.access'
    expect(strategy.client.token_url).to be == 'https://api.slack.com/api/oauth.access'
  end
end
