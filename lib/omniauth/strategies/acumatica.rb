require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Acumatica < OmniAuth::Strategies::OAuth2
      option :name, "acumatica"

      option :client_options, {
        authorize_url: '/identity/connect/authorize',
        token_url:  '/identity/connect/token'
      }
      
      option :token_params, { grant_type: 'authorization_code' }
      
      def request_phase
        redirect client.auth_code.authorize_url({:redirect_uri => callback_url}.merge(authorize_params))
      end

      def authorize_params
        super
      end

      protected
      
      def callback_url
        options[:redirect_uri] || (full_host + script_name + callback_path)
      end
           
    end
  end
end
