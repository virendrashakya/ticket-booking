Rails.application.routes.draw do

  get 'screens/index'
  get 'home/index'
  root to: 'users/dashboard#summary'

  post 'show/:id/book-seats', to: 'show#book_seats'

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