Hanza::Application.routes.draw do
  scope defaults: {format: 'json'} do
    resources :environments
    resources :computes
  end

  devise_for :users
  root to: 'home#index'
end
