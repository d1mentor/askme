Rails.application.routes.draw do
  get 'users/index'
  get 'users/new'
  get 'users/edit'
  get 'users/show'
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
