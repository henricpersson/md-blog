class AddExcerptToBlogEntry < ActiveRecord::Migration
  def change
    add_column :blog_entries, :excerpt_body, :text
  end
end
