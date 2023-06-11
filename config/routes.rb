Rails.application.routes.draw do
  root 'books#start'
  get 'start', to: 'books#start', as: 'start'
  get 'books/by_month/:year/:month', to: 'books#index', as: 'books_by_month'

  resources :books
end

