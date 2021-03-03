Rails.application.routes.draw do


  get 'home/index'
  root to: 'users/dashboard#summary'


  # resources :show

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resources :orders

  resources :screens, only: [:index] do
    member do
      resources :shows do
        member do
          resources :seats
        end
      end
    end
  end
end