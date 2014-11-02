Rails.application.routes.draw do

  root 'landing_pages#index'
  resources :votes, only: :create
  resources :subjects do
    resources :links,  only: [:index, :new, :create]
  end

end
