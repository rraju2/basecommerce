class CreateProductOptionChoises < ActiveRecord::Migration
  def change
    create_table :product_option_choises do |t|
      t.integer :product_option_id, :null => false
      t.string :value, :null => false
      t.integer :price_modifier_type, :default => 0
      t.decimal :price_modifier, :default => 0
      t.timestamps
    end
  end
end
