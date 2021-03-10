Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  mount Lockup::Engine, at: '/lockup'

  resources :projects, only: [:index, :new, :create, :destroy], :path => '/'

end
