module BlogHelper

  def markdown_to_html(markdown)
    converter = Redcarpet::Markdown.new(
      Redcarpet::Render::HTML,
      autolink: true,
      space_after_headers: true
    )

    converter.render(markdown)
  end
end
