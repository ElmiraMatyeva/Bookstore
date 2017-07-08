Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/new'

  get 'reviews/show'

  get 'reviews/edit'

  devise_for :users
 resources :books
 root 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
