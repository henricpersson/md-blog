class BlogController < ApplicationController

  def index
    @blog_entries = BlogEntry.limit(10)
  end

end
