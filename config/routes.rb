MdBlog::Application.routes.draw do
  resources :blog_entries

  resources :blog, only: [:show]

  root :to => 'blog#index'

  match '/auth/:provider/callback', to: 'session#create'

  match '/session/logout', to: 'session#destroy'

end
