Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html  
  
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
