class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :bike
  validates :bike, :content, presence: true
  validates_uniqueness_of :id
end
