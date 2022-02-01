Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  devise_for :users
  resources :projects do
    resources :assets, only: [:create]
    resources :tasks do
      resources :comments, only: [:create]
      member do
        patch :toggle
      end
    end
  end


  root 'projects#index'
end
