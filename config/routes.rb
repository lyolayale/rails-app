Rails.application.routes.draw do
  resources :posts
  root "posts#index"

  # get "posts", to: "posts#index"
  # get "posts/show", to: "posts#show"
  # get "posts/new", to: "posts#new"
  # get "posts/edit", to: "posts#edit"
end
