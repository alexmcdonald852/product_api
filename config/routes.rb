Rails.application.routes.draw do
  get 'products/latest'
  resources :products, except: :update
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
