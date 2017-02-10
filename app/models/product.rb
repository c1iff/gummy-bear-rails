class Product < ActiveRecord::Base
  validates :name, :presence => true
  validates :description, :presence => true
  validates :features, :presence => true
  validates :part_number, :presence => true
  validates :cost, :presence => true
end
