class CreateProductVariants < ActiveRecord::Migration
  def change
    create_table :product_variants do |t|
      t.integer :product_id, :null =>false
      t.string :sku, :null => false
      t.string :image, :default => ""
      t.decimal :price, :default => 0
      t.datetime :deleted_at
      t.integer :inventory_id
      t.boolean :master, :default => false
      t.timestamps
    end
  end
end
