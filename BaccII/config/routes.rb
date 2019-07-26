Rails.application.routes.draw do
  root to: 'pages#home'

  # IMPORTANT #
  # This `match` must be the *last* route in routes.rb
  match '*path', to: 'pages#home', via: :all
end
