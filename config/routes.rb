MdBlog::Application.routes.draw do
  resources :blog_entries

  root :to => 'blog#index'

end
