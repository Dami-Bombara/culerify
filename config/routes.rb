Rails.application.routes.draw do
  get 'culerify', to: 'culerify#index'
  post 'culerify', to: 'culerify#create'
  get 'culerify/new', to: 'culerify#new'
  get 'culerify/:id/edit', to: 'culerify#edit', as: 'edit_culer'
  get 'culerify/:id', to: 'culerify#show', as: 'culer'
  patch 'culerify/:id', to: 'culerify#update'
  delete 'culerify/:id', to: 'culerify#destroy', as: 'destroy_culer'

  root 'home#index'
end
