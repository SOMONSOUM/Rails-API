Rails.application.routes.draw do

  # namespace :api, :defaults => { :format => :json } do
  #   namespace :v1 do
  #     resources :todos
  #   end
  # end

  root to: 'homes#index'

  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
  match '*path', to: 'homes#index', via: :all
end
