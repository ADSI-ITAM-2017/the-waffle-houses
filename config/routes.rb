Rails.application.routes.draw do
  resources :properties

  get 'propiedad/index'

  default_url_options :host => "localhost:3000"
  devise_for :users
  get 'welcome/index'
  root "welcome#index"

  # devise_for :users, :controllers => { user_controller: 'user_controllers	' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
