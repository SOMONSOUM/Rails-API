Rails.application.routes.draw do
  get 'downloads/show'
  root to: 'invoices#index'

  resources :invoices, only: [:index, :show] do
    resource :download, only: [:show]
  end
end
