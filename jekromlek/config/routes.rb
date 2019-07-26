Rails.application.routes.draw do

  namespace :admins do
    devise_for :users, controllers: {
        sessions: 'admins/users/sessions',
        :skip => [:registerations]
      }
  end
end
