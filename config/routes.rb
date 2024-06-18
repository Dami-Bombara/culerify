Rails.application.routes.draw do
  get 'culerify', to: 'culerify#index'
  get 'culerify/new', to: 'culerify#new'
  get 'culerify/:id', to: 'culerify#show'
  post 'culerify', to: 'culerify#create'

  root 'home#index'
end
