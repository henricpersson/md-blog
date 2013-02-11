class BlogController < ApplicationController

  def index
    @blog_entries = BlogEntry.limit(10)
    @og = {
      title: 'Code Valley Code',
      description: 'An open source message board with random programming related posts.',
      url: root_url,
      type: 'website'
    }
  end

  def show
    blog_entry = BlogEntry.find(params[:id])

    @og = {
      title: blog_entry.title,
      description: blog_entry.excerpt_body,
      url: blog_url(blog_entry),
      type: 'article'
    }

    render 'blog/_entry', layout: !request.xhr?, locals: {
      blog_entry: blog_entry,
      truncated: false
    }
  end
end
