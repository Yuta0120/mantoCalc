Rails.application.routes.draw do
  devise_for :users
 root to: "top#index"
 resources :users, only: [:index, :show, :new, :create, :destroy, :edit, :update]
 resources :mantos, only: [:index, :show, :new, :create, :destroy, :edit, :update]
 resource :top
end
