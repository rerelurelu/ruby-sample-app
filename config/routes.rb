Rails.application.routes.draw do
  # Person
  get 'people/index'
  get 'people', to: 'people#index'
  get 'people/add'
  post 'people/add', to: 'people#create'
  get 'people/delete/:id', to: 'people#delete'
  get 'people/edit/:id', to: 'people#edit'
  patch 'people/edit/:id', to: 'people#update'
  get 'people/:id', to: 'people#show'

  # Msgboard
  get 'msgboard', to: 'msgboard#index'
  post 'msgboard', to: 'msgboard#index'
  get 'msgboard/index'
  post 'msgboard/index'

  # Hello
  get 'hello', to: 'hello#index'
  get 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/index'
end
