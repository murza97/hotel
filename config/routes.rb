Rails.application.routes.draw do

root 'main#index'# отображение главной страницы

#get 'guest' => 'books#guest' #обработка страницы гостевой книги
resources :books
get 'shop'  => 'shop#shop'

end
