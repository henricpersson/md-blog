class BlogEntry < ActiveRecord::Base
  include BlogHelper
  include ActionView::Helpers::TextHelper

  attr_accessible :body, :published_at, :title, :url_slug, :rendered_body,
    :excerpt_body
  acts_as_url :title, url_attribute: :url_slug
  before_save :generate_rendered_body, :generate_excerpt

  default_scope order: 'published_at DESC'

  def to_param
      "#{id}-#{url_slug}"
  end

  def generate_rendered_body
    self.rendered_body = markdown_to_html(body)
  end

  def generate_excerpt
    self.excerpt_body = truncate(strip_tags(rendered_body), length: 400, separator: ' ')
  end
end
