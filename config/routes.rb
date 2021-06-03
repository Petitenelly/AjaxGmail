Rails.application.routes.draw do
  devise_for :users
  root "email#index" 
  resources :tasks, except: [:show]
  resources :email, only: [:index, :show, :create, :new, :destroy, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
