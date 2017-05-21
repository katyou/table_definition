Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users
  resources :companies do
    member do
      get 'new_user'
      post 'create-user'
    end
  end

  resources :projects do
    resources :tables do
      resources :columns
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
