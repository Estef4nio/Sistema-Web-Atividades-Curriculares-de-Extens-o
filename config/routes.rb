Rails.application.routes.draw do
  resources :requisicaos
  resources :modalidades
  resources :atividades
  devise_for :admin, controllers: {
    sessions: 'admin/sessions',
    registrations: 'admin/registrations'
  }
  devise_for :users, controller: {
    sessions: 'users/sessions'
  }
  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  root 'pages#home'
  get 'pages/users'
  get 'pages/admin'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
