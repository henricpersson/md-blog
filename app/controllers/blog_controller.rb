class BlogController < ApplicationController

  def index
    @blog_entries = BlogEntry.limit(10)
  end

  def show
    blog_entry = BlogEntry.find(params[:id])

    render 'blog/_entry', layout: !request.xhr?, locals: {
      blog_entry: blog_entry,
      truncated: false
    }
  end
end
