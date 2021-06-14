Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    get 'users/sign_in', to: 'users/sessions#new', as: :new_users_session
    get 'users/sign_out', to: 'users/sessions#destroy', as: :destroy_users_session
  end

  root 'posts#index'

  resources :posts

  get '/cgu', to: 'pages#cgu', as: :cgu
  get '/confidentialite', to: 'pages#confidentialite', as: :confidentialite
end
