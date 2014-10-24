Rails.application.routes.draw do

  get 'links/index'

  root 'landing_pages#index'

end
