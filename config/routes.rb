Rails.application.routes.draw do
  get 'columns/index'

  get 'tables/index'

  get 'tables/show'

  devise_for :users
  root 'projects#index'


  resources :company do
    resources :project do
      resources :tables do
        resources :columns
      end
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
