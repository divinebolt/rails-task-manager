Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # Routes of CRUD

  root to: 'tasks#index'

  # READ 1

  get 'tasks/:id', to: 'tasks#show'

  # READ ALL

  get 'tasks', to: 'tasks#index'

  # CREATE

  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # UPDATE

  get 'tasks/:id/edit', to: 'tasks#edit'
  patch 'tasks', to: 'tasks#update'

  # DELETE

  delete 'tasks/:id', to: 'tasks#destroy'
end
