Rails.application.routes.draw do
  get 'hello', to: 'hello#index'
  get 'hello/index'
  post 'hello', to: 'hello#index'
  post 'hello/index'
end
