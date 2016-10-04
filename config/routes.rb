Rails.application.routes.draw do
  devise_for :users
  
  resources :blog_posts do
  	resources :comments, only: [:create, :edit, :update, :destroy]
  end

  root "blog_posts#index"
end
