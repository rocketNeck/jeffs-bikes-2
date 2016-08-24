class Comment < ActiveRecord::Base
  attr_reader :set_user_id
  belongs_to :user
  belongs_to :bike
  has_many :comment_tags
  has_many :tags, through: :comment_tags

  validates :content, presence: true
  validates :bike, presence: true
  validates_uniqueness_of :id

  # def all_tags=(tags)
  #   tag_attributes.each do |i, attribute|
  #     self.tags.build(attribute)
  #   end
  # end

  # def all_tags
  #   self.tags.map(&:name).join(", ")
  # end

end
