Rails.application.routes.draw do
  root 'tasks#index'
  resources :tasks
  patch '/tasks/:id/status', to: 'tasks#status', as: 'task_status'
end
