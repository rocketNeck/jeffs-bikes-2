class Tag < ActiveRecord::Base
  has_many :comment_tags
  has_many :comments, through: :comment_tags
end
