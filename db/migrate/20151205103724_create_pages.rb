class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :description
      t.string :firstimage
      t.string :secondimage
      t.string :thirdimage
      t.string :fourthimage
      t.integer :user_id

      t.timestamps

    end
  end
end
