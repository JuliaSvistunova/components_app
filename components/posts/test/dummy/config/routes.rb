Rails.application.routes.draw do
  mount Posts::Engine => "/posts"
end
