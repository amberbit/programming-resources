Rails.application.routes.draw do

  root 'landing_pages#index'
  resources :subjects do
    resources :links,  only: [:index, :new, :create]
  end

  resources :votes, only: [:create]

end
