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

ActiveRecord::Schema.define(version: 20150615031633) do

  create_table "applicants", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "scouttype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "applicants", ["user_id"], name: "index_applicants_on_user_id"

  create_table "badges", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "badges", ["user_id"], name: "index_badges_on_user_id"

  create_table "blue_cards", force: :cascade do |t|
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "user_id"
    t.string   "applicant_name"
    t.string   "applicant_address"
    t.string   "applicant_city"
    t.string   "applicant_scouttype"
    t.string   "badge_name"
    t.string   "counselor_name"
    t.string   "counselor_address"
    t.string   "counselor_city"
    t.string   "counselor_state"
    t.string   "counselor_zipcode"
    t.string   "counselor_telephone"
    t.string   "unit"
    t.string   "district"
    t.string   "council"
  end

  add_index "blue_cards", ["user_id"], name: "index_blue_cards_on_user_id"

  create_table "counselors", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zipcode"
    t.string   "telephone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "counselors", ["user_id"], name: "index_counselors_on_user_id"

  create_table "order_items", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.decimal  "unit_price",  precision: 12, scale: 3
    t.integer  "quantity"
    t.decimal  "total_price", precision: 12, scale: 3
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], name: "index_order_items_on_product_id"

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal",        precision: 12, scale: 3
    t.decimal  "tax",             precision: 12, scale: 3
    t.decimal  "shipping",        precision: 12, scale: 3
    t.decimal  "total",           precision: 12, scale: 3
    t.integer  "order_status_id"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  add_index "orders", ["order_status_id"], name: "index_orders_on_order_status_id"

  create_table "print_orders", force: :cascade do |t|
    t.datetime "order_date"
    t.datetime "print_date"
    t.datetime "ship_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "print_orders", ["user_id"], name: "index_print_orders_on_user_id"

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.decimal  "price",      precision: 12, scale: 3
    t.boolean  "active"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
