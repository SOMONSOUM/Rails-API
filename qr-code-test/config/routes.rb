Rails.application.routes.draw do
  namespace :api do
  root 'visitors#index'
  resources :products do
    post :get_barcode, on: :collection
      get 'search' => "products#search", as: "search"
    end
  end
  resources :qrcodes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
