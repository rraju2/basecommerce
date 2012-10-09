class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name, :null => false
      t.text :description, :default => ""
      t.string :image, :default => ""
      t.string :meta_keywords, :default => ""
      t.string :meta_description, :default => ""
      t.string :tags, :default => ""
      t.boolean :active, :default => true
      t.datetime :deleted_at
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
