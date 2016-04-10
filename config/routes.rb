Rails.application.routes.draw do
  devise_for :users

  root to: 'parks#index'

  resources :parks do
    resources :reviews
  end

  resources :users, except: [:new, :create]

end
