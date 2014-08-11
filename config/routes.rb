Rails.application.routes.draw do
  root 'translations#index'

  get '/translate/:language/', to: 'translations#index'
end
