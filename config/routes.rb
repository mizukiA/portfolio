Rails.application.routes.draw do
  resources :works
  root 'works#index'

  scope :details do
    get '/mercari', to: 'details#mercari'
    get '/sns', to: 'details#sns'
    get '/others', to: 'details#others'
  end

end
