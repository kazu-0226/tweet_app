Rails.application.routes.draw do
  
  get 'login' => "users#login_form", as: :login_form
  post `login` => "users#login", as: :login
  get 'signup' => "users#new"
  post 'signup'=> "users#create", as: :create
  get "users/index" => "users#index" 
  get "users/:id" => "users#show", as: :show
  get 'users/:id/edit' =>"users#edit", as: :edit
  patch "users/:id" => "users#update", as: :update
  post "logout" => "users#logout", as: :logout
  get "users/:id/likes" => "users#likes" , as: :user_likes

  get 'posts/index' => "posts#index"
  get "posts/new" => "posts#new"
  get "posts//:id" => "posts#show", as: :posts_show
  post "posts/create" => "posts#create"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  post "posts/:id/destroy" => "posts#destroy"

  post "likes/:post_id/create" => "likes#create", as: :likes_create
  post "likes/:post_id/destroy" =>"likes#destroy", as: :likes_destroy
  
  
  root to: "home#top"
  get "about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
