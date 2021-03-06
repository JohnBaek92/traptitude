Rails.application.routes.draw do
  root 'static_pages#root'

  namespace :api, defaults: {format: :json} do
    resource :session, only: [:create, :destroy]
    resources :users, only: [:create, :show]
    resources :albums, only: [:index, :show, :create]
    resources :tracks, only: [:show, :create, :index]
    resources :annotations, only: [:show, :create, :destroy, :update, :index]
    resources :favorites, only: [:index, :create, :destroy, :show]
  end
end
