Rails.application.routes.draw do
  resources :uploads, only: [:create, :destroy]
  root "posts#index" 
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
