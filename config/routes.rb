Rails.application.routes.draw do

  resources :links

  get 'links/index'

  root 'landing_pages#index'

end
