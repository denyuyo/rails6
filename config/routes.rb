Rails.application.routes.draw do
  devise_for :users
  root to: "homes#top"
  get "/home/about"=>"homes#about"
  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
end

  resources :books, only: [:index,:show,:edit,:create,:destroy,:update]
  resources :users, only: [:index,:show,:edit,:update]
  
 end
