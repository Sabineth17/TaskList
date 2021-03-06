Rails.application.routes.draw do
# resources :tasks

root "tasks#index"

# get 'tasks/', to:'task#index'

get '/tasks/new', to:'tasks#new', as: 'new_task'

post '/tasks', to: 'tasks#create', as: 'create_task'

get '/tasks/:id', to:'tasks#show', as: 'task'

put '/tasks/:id', to: 'tasks#update'

get '/tasks/:id/edit', to: 'tasks#edit', as: 'edit_task'

patch '/tasks/:id', to: 'tasks#update', as: 'update_task'

delete '/tasks/:id', to: 'tasks#destroy', as: 'delete_task'
#the column id makes a variable, it is a placeholder that can be anything,
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
