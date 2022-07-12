Rails.application.routes.draw do
  resources :machines
  resources :categories
  resources :articles
  root to: "machines#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
