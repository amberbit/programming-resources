Rails.application.routes.draw do

  root 'landing_pages#index'
  get 'auth/:provider/callback' => 'sessions#create', as: 'signin'
  post 'signout' => 'sessions#destroy', as: 'signout'

  resources :subjects do
    resources :links,  only: [:index, :new, :create]
  end

  resources :votes, only: [:create]

end
