Rails.application.routes.draw do


root 'main#index', as: 'home' # отображение главной страницы
#обработка страницы гостевой книги
get 'guest' => 'books#guest', as: 'guest'
resources :books
get 'questone'  => 'silenthill#questone', as: 'questone'

get 'questtwo'  => 'letmeout#questtwo', as: 'questtwo'

root 'main#index'# отображение главной страницы

#get 'guest' => 'books#guest' #обработка страницы гостевой книги
resources :books
get 'shop'  => 'shop#shop'


end
