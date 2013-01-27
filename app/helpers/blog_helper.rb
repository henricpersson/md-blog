module BlogHelper

  def markdown_to_html(markdown)
    converter = Redcarpet::Markdown.new(
      HTMLWithAlbino,
      autolink: true,
      space_after_headers: true,
      fenced_code_blocks: true,
      gh_codeblocks: true
    )

    converter.render(markdown)
  end
end
