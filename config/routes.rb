Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index', as:'home'
  get 'about' => 'pages#about', as:'about'
  get 'new' => 'posts#new', as:'new'
  
  resources :posts do
  	resources :comments
  end 

 end 
