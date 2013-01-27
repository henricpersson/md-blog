class BlogEntry < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :url_slug
end
