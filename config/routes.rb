Rails.application.routes.draw do
  get 'events/index'

  get 'events/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events, only: [:index, :create, :new]
end
