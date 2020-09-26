Rails.application.routes.draw do
  get 'books/start'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#home'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id' => 'books#show', as: 'books_show'
  get 'books/:id/edit' => 'books#edit', as: 'books_edit'
  patch 'books/:id' => 'books#update'
  delete "books/:id" => 'books#destroy', as: 'destroy_books'
end
