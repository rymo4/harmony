class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.string :media
      t.text :body

      t.timestamps
    end
  end
end
