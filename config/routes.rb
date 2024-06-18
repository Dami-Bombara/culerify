Rails.application.routes.draw do
  get 'culerify', to: 'culerify#index'

  root 'home#index'
end
