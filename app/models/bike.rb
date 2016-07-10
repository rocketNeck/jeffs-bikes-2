class Bike < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  #simple search function
  def self.search(search)
    if search
      where(["company LIKE ?","%#{search}"])
    else
      all
    end
  end
  
end
