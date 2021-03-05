# frozen_string_literal: true

class OauthApp
  def oauth2_client
    OAuth2::Client.new(client_id, client_secret, site: site)
  end

  def client_id
    ENV.fetch('OAUTH_APP_CLIENT_ID')
  end

  def client_secret
    ENV.fetch('OAUTH_APP_CLIENT_SECRET')
  end

  def site
    ENV.fetch('OAUTH_APP_SITE', 'http://localhost:3000')
  end

  def redirect_uri
    Rails.application.routes.url_helpers.oauth_callback_url(host: ENV.fetch('APP_HOST'))
  end
end
