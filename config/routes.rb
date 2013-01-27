MdBlog::Application.routes.draw do
  resources :blog_entries

  resources :blog, only: [:show]

  root :to => 'blog#index'

end
