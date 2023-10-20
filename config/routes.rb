Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#about"

  devise_for :users
  resources :skill
  resources :social_links
  resources :technologies
  resources :suer_skills
  resources :home

  

end
