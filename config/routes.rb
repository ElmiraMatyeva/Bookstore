Rails.application.routes.draw do
	
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	devise_for :users

	resources :books do
		resources :reviews, except: [:show, :index]
	end

	root 'books#index'
	
	resources :categories
    resources :authors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
