Rails.application.routes.draw do
  # root to: 'movies#index'
  scope '(:locale)', locale: /en|km/ do
    root to: 'dashboards#index'

    # get 'movies' => 'movies#index'

    # resources :dashboards, only: [:index]

    resources :movies, path: 'dashboard/movies' do
      member do
        get :index
      end
    end

  end
end
