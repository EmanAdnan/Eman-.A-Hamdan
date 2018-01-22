Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
 devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout'}, controllers: { registrations: "user_registrations" } 
  
  resources :products do
  resources :comments
end

  resources :users
  resources :orders, only: [:index, :show, :create, :destroy]
  
  root 'simple_pages#index'

  
  get 'simple_pages/', to: 'simple_pages#index' 
  get 'simple_pages/about'
  get 'simple_pages/contact'
  get 'simple_pages/landing_page'
  get 'simple_pages/index'
  post 'simple_pages/thank_you'
   get 'users/index'
   post 'payments/create'

  mount ActionCable.server => '/cable'

 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
