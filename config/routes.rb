Rails.application.routes.draw do
resources :parks do
    resources :parks
  end
end
