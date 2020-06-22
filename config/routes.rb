Rails.application.routes.draw do
  

  devise_for :users
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
	root 'posts#index', as: 'home'
	
	resources :users
	
	resources :posts do
		resources :comments
		post 'comments', to: 'comments#create'
	end
end
