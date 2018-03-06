Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  root 'posts#index'

  get '/:name' => 'posts#user_posts', as: :user_posts

end
