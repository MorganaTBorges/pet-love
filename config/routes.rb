Rails.application.routes.draw do
  devise_for :users
    resources :pessoas do
      resources :animals, only: %i[new create]
    end
  root to: 'pessoas#index'
  resources :animals, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

