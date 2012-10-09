class VariantPropertyValue < ActiveRecord::Base
   belongs_to :product_property
   belongs_to :product_variant
end
