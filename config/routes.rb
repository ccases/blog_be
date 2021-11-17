Rails.application.routes.draw do
  resources :articles

  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new'
  # post '/articles' => 'articles#create'

  # get 'articles/:id/edit' => 'articles#edit'

  # get '/articles/:id' => 'articles#show'
  # get '/articles/two' => 'articles#two'
end
