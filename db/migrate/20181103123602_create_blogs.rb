class CreateBlogs < ActiveRecord::Migration[5.1]
  def change
    create_table :blogs do |t|
      t.string :author
      t.string :feed_url

      t.timestamps
    end
    add_index :blogs, :feed_url
  end
end
