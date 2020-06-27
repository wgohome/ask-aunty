Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/join_meal', to: 'pages#join_meal'
  get '/create_meal', to: 'pages#create_meal'

  get '/meals/:id/polls', to: 'meals#setup', as: 'setup'
  get '/meals/:id/result', to: 'meals#result', as: "result"

  resources :meals, only: [:new, :create] do
    resources :polls, only: [:create]
  end

  resources :meals, only: [:new, :create]
  resources :preferences, only: [:index]
  patch '/save_preference', to: 'preferences#save_preference'
end
