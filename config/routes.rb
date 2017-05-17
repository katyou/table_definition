Rails.application.routes.draw do

  root 'homes#index'
  devise_for :users

  resources :companies do
    resources :projects do
      resources :tables do
        resources :columns
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
