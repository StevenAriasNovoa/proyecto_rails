Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "home#about"

  devise_for :users
  resources :projects
  resources :skills
  resources :social_links
  resources :technologies
  resources :suer_skills
  resources :home

  devise_scope :user do
    get "/users/sign_out", as: "sign_out", to: "devise/sessions#destroy"
  end

end
