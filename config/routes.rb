Rails.application.routes.draw do

  get 'order/create'
  get 'home/index'
  root to: 'users/dashboard#summary'

  post 'show/:id/book-seats', to: 'show#book_seats'

  resources :show

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  resource :orders
end