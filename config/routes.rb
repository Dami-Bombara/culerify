Rails.application.routes.draw do
  get 'culerify', to: 'culerify#index'
  get 'culerify/new', to: 'culerify#new'
  get 'culerify/edit/:id', to: 'culerify#edit'
  get 'culerify/:id', to: 'culerify#show', as: 'culer'
  post 'culerify', to: 'culerify#create'

  root 'home#index'
end
