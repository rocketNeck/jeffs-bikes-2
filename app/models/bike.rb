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
    self.tags = all_tags.split(", ").map do |name|
      Tag.where(name: name.strip).first_or_create!
    end
  end

  def all_tags
    self.tags.map(&:name).join(", ")
  end

  def self.tagged_with(name)
    Tag.find_by_name!(name).bikes
  end

end
