# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth/slack/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-slack'
  spec.version       = OmniAuth::Slack::VERSION
  spec.authors       = ['Irfan Ahmed']
  spec.email         = ['irfandhk@gmail.com']

  spec.summary       = %q{Slack OAuth2 Strategy for OmniAuth}
  spec.homepage      = 'https://github.com/rubyrider/omniauth-slack'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.2'

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
