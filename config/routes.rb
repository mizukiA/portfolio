Rails.application.routes.draw do
  resources :works
  root 'works#index'

  resources :details do
    get '/mercari', to: 'details#mercari'
    get 'sns', to: 'details#sns'
    get 'chatspace', to: 'details#chatspace'
    get 'pictweet', to: 'details#pictweet'
  end

  namespace :details do
      get '/mercari', to: 'details#mercari'
      get 'sns', to: 'details#sns'
      get 'chatspace', to: 'details#chatspace'
      get 'pictweet', to: 'details#pictweet'
  end

end
