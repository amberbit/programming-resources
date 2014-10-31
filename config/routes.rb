Rails.application.routes.draw do

  root 'landing_pages#index'
  resources :subjects do
    resources :links,  only: [:index, :new, :create] do
      member do
        get 'vote'
      end
    end
  end

end
