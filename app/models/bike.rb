class Bike < ActiveRecord::Base
  belongs_to :user
  has_many :comments

  #simple search function
  def self.search(field, search)
    if search
      where(field.to_sym => search)
    else
      all
    end
  end

end
