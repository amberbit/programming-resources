Rails.application.routes.draw do

  get 'notes/index'

  root 'landing_pages#index'

end
