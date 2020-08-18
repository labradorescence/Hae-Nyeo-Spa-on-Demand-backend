Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :treatments, only: [:index, :show, :new, :create, :update, :destroy]
      resources :users, only: [:index, :show, :new, :create, :update, :destroy] do
        resources :appointments, only: [:index, :show, :new, :create, :update, :destroy]
      end
    end
  end
end
