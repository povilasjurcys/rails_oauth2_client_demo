class OauthController < ApplicationController
  def start
    client = oauth_app.oauth2_client
    redirect_to client.auth_code.authorize_url(redirect_uri: oauth_app.redirect_uri)
  end

  def callback
    client = oauth_app.oauth2_client
    token = client.auth_code.get_token(params[:code], redirect_uri: oauth_app.redirect_uri)

    render(json: { token_params: token.params })
  end

  private

  def oauth_app
    @oauth_app ||= OauthApp.new
  end
end
