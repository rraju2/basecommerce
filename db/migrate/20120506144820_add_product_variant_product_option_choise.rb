class AddProductVariantProductOptionChoise < ActiveRecord::Migration
  def up
    create_table 'product_variants_product_option_choises', :id => false do |t|
		t.column :product_variant_id, :integer, :null => false
		t.column :product_option_choise_id, :integer, :null => false
	end
  end

  def down
  end
end
