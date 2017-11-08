Rails.application.routes.draw do
  get 'authors/show'

  get 'test/index'
#  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
end
