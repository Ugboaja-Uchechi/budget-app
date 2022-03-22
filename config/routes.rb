Rails.application.routes.draw do
  # get 'group/index'
  devise_for :users
  devise_scope :user do
    authenticated  do
      root to: 'group#index'
   end

  unauthenticated do
      root to: 'home#index', as: 'unauthenticated_root'
  end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :home, only: [:index]
  resources :group, only: [:index]
  # root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
