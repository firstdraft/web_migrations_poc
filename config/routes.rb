Rails.application.routes.draw do
  get "dev/tables" => "web/tables#index"
  resources :castings
  resources :actors
  resources :directors
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
