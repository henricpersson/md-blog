class ChangeStringToTextInBlogEntries < ActiveRecord::Migration
  def up
    change_column :blog_entries, :body, :text
  end

  def down
    change_column :blog_entries, :body, :string
  end
end
