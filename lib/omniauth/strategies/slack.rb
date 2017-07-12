require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Slack < OmniAuth::Strategies::OAuth2
      NoAuthorizationCodeError = Class.new(StandardError)

      DEFAULT_SCOPE = 'email'

      option :name, 'slack'

      options :scope, ''

      option :client_options, {
        site:          'https://api.slack.com/',
        authorize_url: 'https://slack.com/oauth/authorize',
        token_url:     'api/oauth.access'
      }

      option :authorize_options, [:scope]

      def raw_info
        @raw_info = MultiJson.decode(access_token.get('api/users.identity').body)
      end
    end
  end
end
