class Comment < ActiveRecord::Base
  #attr_accessible :attribute_name
  belongs_to :user
  belongs_to :bike
  validates :content, presence: true
  validates :bike, presence: true
  validates_uniqueness_of :id

  def self.set_bike_id=(value)
    write_attribute(:bike_id, value)
  end


  # def self.with_unread_messages
  #   joins(:messages).merge( Message.unread )
  # end
end
