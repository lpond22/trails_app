Rails.application.routes.draw do
  #resources :trails
  devise_for :users

  root to: 'parks#index'

  resources :parks do
    resources :trails
  end

    resources :trails do
    resources :reviews
  end

  resources :users, except: [:new, :create]

end
