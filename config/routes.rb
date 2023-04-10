Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :posts , :only => %i[create ]
  resources :users , :only => %i[create ]
  resources :reviews , :only => %i[ index create ]
  get '/users/posts/:id' ,to: 'users#listPosts'

end
