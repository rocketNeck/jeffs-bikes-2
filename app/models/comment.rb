class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :bike
  validates :content, presence: true
  validates :bike, presence: true
  validates_uniqueness_of :id
end
