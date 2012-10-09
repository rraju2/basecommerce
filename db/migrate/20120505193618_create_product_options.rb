class CreateProductOptions < ActiveRecord::Migration
  def change
    create_table :product_options do |t|
      t.integer :product_id, :null => false
      t.string :name, :null => false
      t.integer :display_type, :default => 0
      t.integer :default_choise, :default => 0
      t.timestamps
    end
  end
end
