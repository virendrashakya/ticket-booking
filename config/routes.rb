Rails.application.routes.draw do

  get 'home/index'
  root to: 'users/dashboard#summary'

  resources :show do 
  end

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
end