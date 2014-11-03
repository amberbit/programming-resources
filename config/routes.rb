Rails.application.routes.draw do

  root 'landing_pages#index'
  match "/auth/:provider/callback" => "sessions#create", via:  :post
  match "/signout" => "sessions#destroy", as: :signout, via:  :post

  resources :subjects do
    resources :links,  only: [:index, :new, :create]
  end

  resources :votes, only: [:create]

end
