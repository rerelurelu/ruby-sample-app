Rails.application.routes.draw do
  # Message
  get 'messages/index'
  get 'messages', to: 'messages#index'

  get 'messages/add'
  post 'message/add', to: 'messages#create'

  get 'messages/edit/:id', to: 'messages#edit'
  patch 'messages/edit/:id', to: 'messages#update'

  get 'messages/delete/:id', to: 'messages#delete'

  get 'messages/:id', to: 'messages#show'

  # Card
  get 'cards/index'
  get 'cards', to: 'cards#index'

  get 'cards/add'
  post 'cards/add'

  get 'cards/edit/:id', to: 'cards#edit'
  patch 'cards/edit/:id', to: 'cards#edit'

  get 'cards/delete/:id', to: 'cards#delete'

  get 'cards/:id', to: 'cards#show'


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
