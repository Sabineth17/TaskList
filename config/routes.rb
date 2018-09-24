Rails.application.routes.draw do
# resources :tasks

root "tasks#index"

post '/tasks', to: 'tasks#create', as: 'create_task'
get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

get '/tasks/new', to:'tasks#new', as: 'new_task'
patch '/tasks/:id', to: 'tasks#update', as: 'update_task'
  # put '/tasks/:id', to: 'tasks#update'

delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
get '/tasks/:id', to:'tasks#show', as: 'task'

#the column id makes a variable, it is a placeholder that can be anything,
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
