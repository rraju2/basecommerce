class ProductVariant < ActiveRecord::Base
   attr_accessible :master, :sku, :price
   
   has_many :variant_property_values
   accepts_nested_attributes_for :variant_property_values
   has_and_belongs_to_many :product_option_choises
   belongs_to :product
   
   validates :sku, :presence => true
   validates :price, :numericality => true
end
