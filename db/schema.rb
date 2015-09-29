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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150929161642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "product_name"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string   "name"
    t.integer  "phone"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_details", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "discount"
    t.string   "bill"
    t.decimal  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "date"
    t.string   "customer_name"
    t.string   "product_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price"
    t.string   "customer_name"
    t.string   "supplier_name"
    t.integer  "supply_quantity"
    t.integer  "order_quantity"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "supplies", force: :cascade do |t|
    t.integer  "quantity"
    t.datetime "date"
    t.string   "supplier_name"
    t.string   "product_name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string   "name"
    t.string   "location"
    t.string   "product_name"
    t.integer  "stock"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
