Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get '/about' => 'pages#about', as: :about

  resources :posts, only: [:new, :create, :edit, :update, :show, :index, :destroy]

end
