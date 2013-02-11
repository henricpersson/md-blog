class BlogEntry < ActiveRecord::Base
  include BlogHelper

  attr_accessible :body, :published_at, :title, :url_slug, :rendered_body
  acts_as_url :title, url_attribute: :url_slug
  before_save :generate_rendered_body

  default_scope order: 'published_at DESC'

  def to_param
      "#{id}-#{url_slug}"
  end

  def generate_rendered_body
    self.rendered_body = markdown_to_html(body)
  end
end
