Rails.application.routes.draw do
  resources :comments
  resources :posts do
    resources :comments
  end
  
  resources :tweets
  get 'tweets' => 'tweets#index'

  ActiveAdmin.routes(self)
  devise_for :users
  as :user do
  	get "signin" => 'devise/sessions#new'
  	delete "signout" => 'devise/sessions#destroy'
  	get "signup" => 'devise/registrations#new'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contact_us' => 'pages#contact_us'
  get 'theresusbay' => 'pages#podcast'
  get 'stations' => 'pages#stations'
  get 'staff' => 'pages#staff'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
