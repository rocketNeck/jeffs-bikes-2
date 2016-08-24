class Comment < ActiveRecord::Base
  attr_reader :set_user_id
  belongs_to :user
  belongs_to :bike

  validates :content, presence: true
  validates :bike, presence: true
  validates_uniqueness_of :id


end
