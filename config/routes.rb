Rails.application.routes.draw do

  root 'landing_pages#index'
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", as: :signout

  resources :subjects do
    resources :links,  only: [:index, :new, :create]
  end

  resources :votes, only: [:create]

end
