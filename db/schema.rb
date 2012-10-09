# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120506144820) do

  create_table "categories", :force => true do |t|
    t.string   "name",                               :null => false
    t.text     "description",      :default => ""
    t.string   "image",            :default => ""
    t.string   "meta_keywords",    :default => ""
    t.string   "meta_description", :default => ""
    t.string   "tags",             :default => ""
    t.boolean  "active",           :default => true
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categorizations", :force => true do |t|
    t.integer  "product_id",  :null => false
    t.integer  "category_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_option_choises", :force => true do |t|
    t.integer  "product_option_id",                    :null => false
    t.string   "value",                                :null => false
    t.integer  "price_modifier_type", :default => 0
    t.decimal  "price_modifier",      :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_options", :force => true do |t|
    t.integer  "product_id",                    :null => false
    t.string   "name",                          :null => false
    t.integer  "display_type",   :default => 0
    t.integer  "default_choise", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_properties", :force => true do |t|
    t.integer  "product_id", :null => false
    t.string   "name",       :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_variants", :force => true do |t|
    t.integer  "product_id",                      :null => false
    t.string   "sku",                             :null => false
    t.string   "image",        :default => ""
    t.decimal  "price",        :default => 0.0
    t.datetime "deleted_at"
    t.integer  "inventory_id"
    t.boolean  "master",       :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_variants_product_option_choises", :id => false, :force => true do |t|
    t.integer "product_variant_id",       :null => false
    t.integer "product_option_choise_id", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id",                         :null => false
    t.string   "name",                                :null => false
    t.text     "description",      :default => ""
    t.string   "image",            :default => ""
    t.string   "meta_keywords",    :default => ""
    t.string   "meta_description", :default => ""
    t.boolean  "front_page",       :default => false
    t.boolean  "active",           :default => true
    t.datetime "deleted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "variant_property_values", :force => true do |t|
    t.integer  "product_property_id", :null => false
    t.integer  "product_variant_id",  :null => false
    t.string   "value",               :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
