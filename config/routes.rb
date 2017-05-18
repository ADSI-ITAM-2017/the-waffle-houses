Rails.application.routes.draw do
  resources :comments
  resources :properties
  resources :searches

  get 'propiedad/index'

  default_url_options :host => "localhost:3000"
  devise_for :users
  get 'welcome/index'
  root "welcome#index"

  get 'properties/information' => 'properties#information'

  # devise_for :users, :controllers => { user_controller: 'user_controllers	' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
