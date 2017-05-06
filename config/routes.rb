Rails.application.routes.draw do
  get "dev/tables" => "web/tables#index", as: :web_tables
  get "dev/tables/:name" => "web/tables#show", as: :web_table
  resources :castings
  resources :actors
  resources :directors
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
