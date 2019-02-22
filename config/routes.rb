Rails.application.routes.draw do
  root :to => 'homes#top'
  get 'articles/new'
  get 'posts/new'
  get '/top' => 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/posts' => 'posts#create'
  get '/posts' => 'posts#index'

  get 'posts/:id' => 'posts#show', as: 'post'

  post 'articles' => 'articles#create'

  get '/articles' => 'articles#index'

  get '/articles/:id' => 'articles#show', as: 'article'

  get '/articles/:id/edit' => 'articles#edit', as: 'edit_post'

  patch '/articles/:id' => 'articles#update', as: 'update_post'

  delete '/articles/:id' => 'articles#destroy', as: 'destroy_post'

end
