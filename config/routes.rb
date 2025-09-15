Rails.application.routes.draw do
  root 'static_pages#index'
  get '/signup', to: 'users#new'
  resources :users do
    resources :todos
  end
end
