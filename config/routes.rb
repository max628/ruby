Rails.application.routes.draw do
  
  get 'househunter/search'
  get 'user/index'
  get 'user/new'

  get 'home/switchprofile'
  #delete '/potentialbuyers/:id', to: 'potentialbuyers#destroy' 

  resources :inquiryreplies
  resources :inquirydetails
  resources :potentialbuyers
  resources :houses
  resources :companies
  devise_for :users
  match '/user', :to => 'user#index',    :as => :user,         :via => :get
  match '/user/:id', :to => 'user#delete', :as => :destroy_user, :via => :delete
  match '/user/create', :to => 'user#create', :as => :create_user, :via => :post


  #match '/potentialbuyers/:id(.:format)', :to => 'potentialbuyers#destroy', :as => :potentialbuyers_path, :via => :delete
  root 'home#index'
end
