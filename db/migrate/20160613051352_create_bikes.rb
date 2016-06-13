class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :company
      t.string :year
      t.string :month
      t.string :serial_number_1
      t.string :serial_number_2
      t.string :model
      t.string :rim_size
      t.string :bike_type
      t.string :metal
      t.string :top_tube
      t.string :head_tube
      t.string :color
      t.string :serial_number_location

      t.timestamps null: false
    end
  end
end
