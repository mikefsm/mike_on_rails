Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'

  resources :posts, only: [:new, :create, :edit, :update, :show, :index]

end
