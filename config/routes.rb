Rails.application.routes.draw do
  get 'about' => 'welcome#about'

  get 'contact' => 'welcome#contact'

  get 'your_posts' => 'blog_posts#your_posts'

  get 'user_posts' => 'blog_posts#user_posts'

  devise_for :users
  
  resources :blog_posts do
  	resources :comments, only: [:create, :edit, :update, :destroy]
  end

  root "blog_posts#index"
end
