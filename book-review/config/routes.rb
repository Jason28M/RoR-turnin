Rails.application.routes.draw do
  get 'books/start'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'books#home'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'book'
  get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update'
  delete "books/:id" => 'books#destroy', as: 'destroy_books'
end
