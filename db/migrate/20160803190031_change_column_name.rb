class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :bikes, :ImageUrl, :image_url
  end
end
