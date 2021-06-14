Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'posts#index'
  resources :posts
  get '/cgu', to: 'pages#cgu', as: :cgu
  get '/confidentialite', to: 'pages#confidentialite', as: :confidentialite
end
