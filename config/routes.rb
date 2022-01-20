Rails.application.routes.draw do
  devise_for :users
 
  root 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/new' => 'posts#create'
  
  
  resources :posts
  resources :users do 
    collection do 
      get 'myprofile'
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
