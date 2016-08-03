class AddImageUrlToBikes < ActiveRecord::Migration
  def change
    add_column :bikes, :ImageUrl, :string
  end
end
