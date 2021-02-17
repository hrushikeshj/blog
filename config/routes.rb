Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]

  resources :users
  root to: 'articles#index'
  resources :articles
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  get 'articles/:id/like', to: 'articles#like'
  get 'articles/:id/unlike', to: 'articles#unlike'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
