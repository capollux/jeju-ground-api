Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  
  # for spots
  get 'spots/new', to: 'spots#new', as: :new_spot
  get 'spots/:id/edit', to: 'spots#edit', as: :edit_spot
  resources :spots

  # for api
  concern :api_base do
    resources :users
    resources :regions
    resources :spots
    resources :flags
  end

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      concerns :api_base
    end
  end
end
