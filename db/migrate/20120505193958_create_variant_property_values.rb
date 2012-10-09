class CreateVariantPropertyValues < ActiveRecord::Migration
  def change
    create_table :variant_property_values do |t|
      t.integer :product_property_id, :null => false
      t.integer :product_variant_id, :null => false
      t.string :value, :null => false

      t.timestamps
    end
  end
end
