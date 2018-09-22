Rails.application.routes.draw do
resources :tasks

get '/tasks', to: 'tasks#index'
# get '/tasks/:id', to:'tasks#show'
#the column id makes a variable, it is a placeholder that can be anything,
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
