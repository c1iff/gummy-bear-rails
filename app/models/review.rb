class Review < ActiveRecord::Base
  belongs_to :product

  validates :user, :presence => true
  validates :content, :presence => true
  validates :rating, :presence => true

end
