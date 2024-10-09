Rails.application.routes.draw do
  #resources :pins
  resources :articles
   root "articles#index"
end

  resources :posts do
   resources :comments
end
  resources :pins do
    resources :commentpins

end
