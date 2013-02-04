module BlogHelper

  def markdown_to_html(markdown)
    converter = Redcarpet::Markdown.new(
      PygmentizeHTML,
      autolink: true,
      space_after_headers: true,
      fenced_code_blocks: true,
      gh_codeblocks: true
    )

    converter.render(markdown)
  end
end
class PygmentizeHTML < Redcarpet::Render::HTML
  def block_code(code, language)
    Pygmentize.process(code, language)
  end
end
