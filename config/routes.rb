Rails.application.routes.draw do

  root 'landing_pages#index'
  resources :subjects do
    resources :links do
      member do
        get 'vote_up'
        get 'vote_down'
      end
    end
  end

end
