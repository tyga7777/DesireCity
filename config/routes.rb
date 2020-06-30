Rails.application.routes.draw do
  root to: 'home#index'

  resources :tasks do
    patch :done, on: :member
  end
  resources :desires
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end