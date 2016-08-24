class Bike < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  has_many :bike_tags
  has_many :tags, through: :bike_tags

  #simple search function
  def self.search(field, search)
    if search
      where(field.to_sym => search)
    else
      all
    end
  end


  def all_tags=(all_tags)
    all_tags.each do |i, tag|
      self.tags.build(tag)
    end
  end

  # def all_tags
  # end

end
