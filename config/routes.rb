Rails.application.routes.draw do
  get 'session/new'

  get 'users/new'

  root 'static_pages#home'

  get 'help' => 'static_pages#help'

  get 'about' => 'static_pages#about'

  get 'contact' => 'static_pages#contact'

  get 'cv' => 'static_pages#cv'

  get 'signup' => 'users#new'

  get 'login' => 'session#new'

  post 'login' => 'session#create'

  delete 'logout'  => 'session#destroy'
  
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
