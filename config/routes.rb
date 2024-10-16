Rails.application.routes.draw do
  resources :commentposts
  resources :articles do
   root "articles#index"
end

  resources :posts do
   resources :commentpost
end
  resources :pins do
    resources :commentpin

 end

end
