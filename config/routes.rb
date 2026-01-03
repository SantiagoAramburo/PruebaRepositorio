Rails.application.routes.draw do
  resources :bicicleta
  get "tasks/index"
  get "tasks/show"
  get "tasks/new"
  get "tasks/create"
  get "/posts", to: "posts#index"
  get "/hola", to: "pages#hola"

  resources :articles do
    resources :comments 
  end

  get "about", to: "pages#about"

  resources :tasks, only: [:index, :show, :new, :create]
  root "articles#index"
end

