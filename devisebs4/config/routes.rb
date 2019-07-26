Rails.application.routes.draw do
  root to: "homes#index"

  devise_for :users, controllers: {
    sessions: 'sessions',
    registrations: 'registrations',
    passwords: 'passwords'
  }
end
