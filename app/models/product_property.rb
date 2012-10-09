class ProductProperty < ActiveRecord::Base
  has_many :variant_property_values
  belongs_to :product
  
  validates :name, :presence => true
end
