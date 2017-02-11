class Product < ActiveRecord::Base
  has_many :reviews

  validates :name, :presence => true
  validates :description, :presence => true
  validates :features, :presence => true
  validates :part_number, :presence => true
  validates :cost, :presence => true
end
