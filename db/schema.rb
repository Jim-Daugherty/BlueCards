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

ActiveRecord::Schema.define(version: 20150601020817) do

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

  create_table "print_orders", force: :cascade do |t|
    t.datetime "order_date"
    t.datetime "print_date"
    t.datetime "ship_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "print_orders", ["user_id"], name: "index_print_orders_on_user_id"

# Could not dump table "users" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

end
