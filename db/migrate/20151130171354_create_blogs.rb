class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :photo
      t.text :body
      t.integer :page_id

      t.timestamps

    end
  end
end
