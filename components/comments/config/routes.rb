Comments::Engine.routes.draw do
  root to: "comments#index"
  resources :comments
end
