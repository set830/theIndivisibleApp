class AddPrayerdateToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :prayerdate, :date
  end
end
