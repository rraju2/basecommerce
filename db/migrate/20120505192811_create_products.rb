class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.integer :category_id, :null => false
      t.string :name, :null => false
      t.text :description, :default => ""
      t.string :image, :default => ""
      t.string :meta_keywords, :default => ""
      t.string :meta_description, :default => ""
      t.boolean :front_page, :default => false
	  t.boolean :active, :default => true
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
