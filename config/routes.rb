Rails.application.routes.draw do
  # devise_for :users
  devise_for :users, controllers: {sessions: 'users/sessions', omniauth_callbacks: 'users/omniauth' }
 
  root 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/new' => 'posts#create'
  get 'states' => 'users#states'
  get 'cities' => 'users#city'
  get 'destroy' => 'users#destroy'
  get 'activate/:id' => 'users#activate', as: 'activate'
  get 'index' => 'users#index'
  get 'user_profile/:id' => 'users#show', as: 'user_profile'
  
  post 'draft' => 'posts#draft'
  get 'draft' => 'posts#draft_show'
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
