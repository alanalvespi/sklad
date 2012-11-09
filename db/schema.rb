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

ActiveRecord::Schema.define(:version => 20121103155654) do

  create_table "bills", :force => true do |t|
    t.string   "id_bill"
    t.date     "date_bill"
    t.float    "total_order"
    t.float    "total_pv"
    t.string   "c_partner_id"
    t.string   "partner_name"
    t.integer  "bill_status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "c_providers", :force => true do |t|
    t.string   "name_provider"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "id_product_category"
    t.string   "category_name"
    t.string   "category_division"
    t.string   "category_description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "incomestocks", :force => true do |t|
    t.string   "id_income_stock"
    t.string   "product_number"
    t.string   "product_name"
    t.float    "product_price"
    t.float    "product_pv"
    t.integer  "quantity"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "c_product_id"
    t.string   "c_bill_id"
    t.integer  "quantity"
    t.float    "percent_ship"
    t.float    "price_pz"
    t.float    "pv_pz"
    t.float    "subtotal_product"
    t.float    "subtotal_pv"
    t.integer  "c_status_order_id"
    t.string   "partner_name"
    t.string   "c_product_name"
    t.string   "comments"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "partners", :force => true do |t|
    t.string   "id_partner"
    t.string   "partner_name"
    t.string   "telephone"
    t.string   "email"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "id_product"
    t.string   "product_name"
    t.string   "bar_code"
    t.float    "client_price"
    t.float    "partner_price"
    t.float    "pv"
    t.string   "description"
    t.string   "contain"
    t.string   "measure"
    t.integer  "c_category_id"
    t.integer  "inStock"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "providers", :force => true do |t|
    t.string   "id_provider"
    t.string   "name_provider"
    t.float    "total_amount"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "status_orders", :force => true do |t|
    t.integer  "id_status"
    t.string   "description"
    t.string   "notes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
