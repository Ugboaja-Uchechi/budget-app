Rails.application.routes.draw do
  # get 'entities/index'
  # get 'group/index'
  devise_for :users
  devise_scope :user do
    authenticated  do
      root to: 'group#index'
   end
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  resources :home, only: [:index]
  resources :entities, only: [:new, :create, :destroy] do
    resources :relations, only: [:create]
  end
    resources :group, only: [:index, :show, :new, :create, :destroy]
  # root "home#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
