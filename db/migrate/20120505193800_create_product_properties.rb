class CreateProductProperties < ActiveRecord::Migration
  def change
    create_table :product_properties do |t|
      t.integer :product_id, :null => false
      t.string :name, :null => false

      t.timestamps
    end
  end
end
