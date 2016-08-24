class Comment < ActiveRecord::Base
  attr_reader :set_user_id
  belongs_to :user
  belongs_to :bike
  validates :content, presence: true
  validates :bike, presence: true
  validates_uniqueness_of :id

  # def tag_attributes=(tag_attributes)
  #   tag_attributes.each do |i, attribute|
  #     self.tags.build(attribute)
  #   end
  # end


  # def self.with_unread_messages
  #   joins(:messages).merge( Message.unread )
  # end
end
