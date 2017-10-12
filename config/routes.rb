Rails.application.routes.draw do
  get 'charges/create'

  get 'charges/new'

  resources :charges

  devise_for :users
  resources :messages do
  	resources :comments
  end
  root 'messages#index'
end 
