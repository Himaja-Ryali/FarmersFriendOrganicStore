Rails.application.routes.draw do
  devise_for :users
  resources :organic_stores
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
<<<<<<< HEAD
  root to: "organic_stores#index"
  resources :organic_stores
=======
  root "posts#index"
  get '/search', to: "posts#search"
>>>>>>> f6829e4 (Added search bar functionalilty)
end
