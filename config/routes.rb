Rails.application.routes.draw do
  devise_for :users
    resources :pessoas do
      resources :animals
    end
  root to: 'pessoas#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

