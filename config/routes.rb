Rails.application.routes.draw do

  root 'landing_pages#index'
  resources :links,  only: [:index, :create, :destroy]

end
