Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  patch '/tasks/:id/status', to: 'tasks#status', as: 'task_status'
#   get '/tasks', to: 'tasks#index', as: 'tasks'
#   get '/tasks/new', to: 'tasks#new', as: 'new_task'
#   post '/tasks', to: 'tasks#create'
#
#   get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'
#   get '/tasks/:id', to: 'tasks#show', as: 'task'
#   patch '/tasks/:id/status', to: 'tasks#status', as: 'task_status'
  # patch '/tasks/:id', to: 'tasks#update'
#   delete '/tasks/:id', to: 'tasks#destroy', as: "delete_task"
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end