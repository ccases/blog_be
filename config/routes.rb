Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  # get '/articles' => 'articles#index'
  # get '/articles/new' => 'articles#new'
  # post '/articles' => 'articles#create'

  # get 'articles/:id/edit' => 'articles#edit'

  # get '/articles/:id' => 'articles#show'
  # get '/articles/two' => 'articles#two'
end
