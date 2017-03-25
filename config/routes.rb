Rails.application.routes.draw do
  root "tasks#index"

  #create
  get "/tasks/new", to: "tasks#new", as: "new_task"
  post "/tasks", to: "tasks#create"


  #update
  get "tasks/:id/edit", to: "tasks#edit", as: "edit_task"
  put "tasks/:id", to: "tasks#update"
  patch "tasks/:id", to: "tasks#update"

  #read
  get '/tasks', to: 'tasks#index'
  get "/tasks/:id", to: "tasks#show", as: 'task'

  #destroy
  delete "tasks/:id", to: "tasks#destroy", as: "delete_task"
end



# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
