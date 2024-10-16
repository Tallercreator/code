Rails.application.routes.draw do
  #resources :pins
  resources :articles do
   root "articles#index"
end

  resources :posts do
   resources :comments
end
#   resources :pins do
#     resources :comment_pins

 end
