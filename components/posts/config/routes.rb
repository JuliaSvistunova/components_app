Posts::Engine.routes.draw do
  root to: 'posts#index'
  resources :posts do
    member do
      post 'create_comment' => :create_comment
    end
  end

end
