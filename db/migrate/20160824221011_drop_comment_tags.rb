class DropCommentTags < ActiveRecord::Migration
  def change
    drop_table :comment_tags
  end
end
