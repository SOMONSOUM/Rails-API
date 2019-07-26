Rails.application.routes.draw do
  get 'lands' => 'lands#index', as: 'lands'
  get 'categories' => 'categories#index'
end
