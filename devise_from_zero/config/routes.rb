# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                      root GET    /                                                                                        articles#index
#                  articles GET    /articles(.:format)                                                                      articles#index
#                           POST   /articles(.:format)                                                                      articles#create
#               new_article GET    /articles/new(.:format)                                                                  articles#new
#              edit_article GET    /articles/:id/edit(.:format)                                                             articles#edit
#                   article GET    /articles/:id(.:format)                                                                  articles#show
#                           PATCH  /articles/:id(.:format)                                                                  articles#update
#                           PUT    /articles/:id(.:format)                                                                  articles#update
#                           DELETE /articles/:id(.:format)                                                                  articles#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

Rails.application.routes.draw do
  root to: 'articles#index'
  
  resources :users
  resources :articles

  resources :sessions, only: [:create, :destroy]
  resources :registrations, only: [:create, :destroy]
end
