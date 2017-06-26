Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
  end 
  # Term used for a collection of similar objects
  # You can CRUD items for a resource
  # Use resources method to declare a standard REST resource
end
