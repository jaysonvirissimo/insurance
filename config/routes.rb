Rails.application.routes.draw do
  resources :sales_people
  resources :sales_offices
  resources :leads
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "leads#new"
end
