class Category < ActiveRecord::Base
  attr_accessible :name, :description, :image, :meta_keywords, :meta_description, :tags, :active, :deleted_at
  
  has_many :categorizations
  has_many :products, :through => :categorizations
end
