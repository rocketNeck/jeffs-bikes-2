class CreateBikeTags < ActiveRecord::Migration
  def change
    create_table :bike_tags do |t|
      t.belongs_to :bike, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
