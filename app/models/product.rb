class Product < ActiveRecord::Base
  attr_accessible :category_id, :name, :description, :image, :meta_keywords, :meta_description, :front_page, :deleted_at, :product_options_attributes, :product_properties_attributes, :product_variants_attributes
  
  has_many :categorizations
  has_many :categories, :through => :categorizations

  has_many :product_variants,  :dependent => :destroy
  accepts_nested_attributes_for :product_variants, :allow_destroy => true
  
  has_one :master_variant, 
    :class_name => 'product_variants',
    :conditions => ["product_variants.master = ? AND product_variants.deleted_at IS NULL", true]
  
  has_many :product_options, :dependent => :destroy
  accepts_nested_attributes_for :product_options, :allow_destroy => true
  
  has_many :product_properties,  :dependent => :destroy
  accepts_nested_attributes_for :product_properties, :allow_destroy => true
  mount_uploader :image, ImageUploader
  
  validates :name, :presence => true
  
  def category_name(category_id)
     @category_name = Category.find_by_id(category_id).name
  end
  
  def master_variant(product_id)
     @master_variant = ProductVariant.where(["product_variants.master = ? AND product_variants.deleted_at IS NULL AND product_variants.product_id = ?", true, product_id]).first
  end
end
