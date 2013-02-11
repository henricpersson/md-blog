class BlogEntry < ActiveRecord::Base
  attr_accessible :body, :published_at, :title, :url_slug, :rendered_body
  acts_as_url :title, url_attribute: :url_slug

  default_scope order: 'published_at DESC'

  def to_param
      "#{id}-#{url_slug}"
  end
end
