Rails.application.routes.draw do
  mount Posts::Engine => '/'
  mount Comments::Engine => '/comments'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
