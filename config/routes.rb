Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/oauth2/callback', to: 'oauth#callback', as: :oauth_callback
  get '/oauth2/start', to: 'oauth#start', as: :oauth_start
end
