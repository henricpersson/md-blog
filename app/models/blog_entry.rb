class BlogEntry < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :url_slug
  acts_as_url :title, url_attribute: :url_slug

  def to_param
      "#{id}-#{url_slug}"
  end
end
