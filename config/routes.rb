Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :listings, only: [:index, :create, :show, :update, :destroy]
      resources :missions, only: :index
    end
  end
  # namespace :admin do
  #   resources :listings
  # end
end
