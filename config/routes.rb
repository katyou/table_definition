Rails.application.routes.draw do

  root 'projects#index'
  devise_for :users

  resources :company do
    resources :project do
      resources :tables do
        resources :columns
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
