Rails.application.routes.draw do
  
  get 'resources/index'

  root 'landing_pages#index'

end
