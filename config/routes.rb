Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
  }
  resources :companies do
    member do
      get 'new_user'
      post 'create-user'
      get 'users_index'
    end
  end

  resources :projects do
    collection do
      get 'select_table'
    end
    resources :tables do
      resources :columns
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
