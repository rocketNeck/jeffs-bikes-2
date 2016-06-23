class Bike < ActiveRecord::Base
  has_many :comments

  def self.search(search)
    if search
      where(["company LIKE ?","%#{search}"])
    else
      all
    end
  end
end
