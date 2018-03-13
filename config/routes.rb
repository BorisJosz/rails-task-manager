Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tasks#index'
  get "/tasks/:id", to: "tasks#show", as: :task

  # Create
  get "/new", to: "tasks#new", as: :new
  post "/new", to: "tasks#create"

  # Update
  get "/tasks/:id/edit", to: "tasks#edit", as: :edit
  patch "/tasks/:id/edit", to: "tasks#update"

  # Destroy
  delete "/tasks/:id", to: "tasks#destroy", as: :delete
end
