Rails.application.routes.draw do
  resources :bitly_babies

  post '/', to: "bitly_babies#new"

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
