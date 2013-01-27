class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.string :title
      t.string :body
      t.string :url_slug
      t.datetime :published_at

      t.timestamps
    end
  end
end
