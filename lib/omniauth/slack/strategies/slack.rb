require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Slack < OmniAuth::Strategies::OAuth2
      NoAuthorizationCodeError = Class.new(StandardError)

      DEFAULT_SCOPE = 'email'

      option :name, "slack"

      option :client_options, {
        site:          'https://api.slack.com/',
        authorize_url: 'https://slack.com/oauth/authorize',
        token_url:     'api/oauth.access'
      }

      option :authorize_options, [:scope]

    end
  end
end
