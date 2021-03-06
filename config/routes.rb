Rails.application.routes.draw do

  root to: 'dashboard#summary'

  devise_for :users, path: 'users', controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  devise_for :admin, path: 'admin', controllers: {
    sessions: 'admin/sessions'
  }

  namespace :admin do 
    resources :orders, only: [:index, :show]
    resources :users, only: [:index]
  end

  resources :orders

  resources :screens, only: [:index] do
  member do
      resources :shows, only: [:show] do
        member do
          resources :seats do
            collection do
              post 'book', to: 'book'
            end
          end
        end
      end
    end
  end

end