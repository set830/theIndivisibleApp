class CreatePostings < ActiveRecord::Migration
  def change
    create_table :postings do |t|
      t.string :name
      t.text :body
      t.integer :page_id

      t.timestamps

    end
  end
end
