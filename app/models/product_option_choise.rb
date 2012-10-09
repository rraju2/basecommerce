class ProductOptionChoise < ActiveRecord::Base
  has_and_belongs_to_many :product_variants
  belongs_to :product_option
end
