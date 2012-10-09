class ProductOption < ActiveRecord::Base
  has_many :product_option_choises
  accepts_nested_attributes_for :product_option_choises
  belongs_to :product
  
  validates :name, :presence => true
end
