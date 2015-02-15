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

ActiveRecord::Schema.define(version: 20150210110955) do

  create_table "commodities", force: true do |t|
    t.string   "title",          null: false
    t.text     "description"
    t.float    "stock_quantity"
    t.string   "quantity_units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "haggles", force: true do |t|
    t.integer  "commodity_id",                null: false
    t.boolean  "open",         default: true, null: false
    t.integer  "seller",                      null: false
    t.integer  "buyer",                       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "haggles", ["commodity_id"], name: "index_haggles_on_commodity_id"

  create_table "offers", force: true do |t|
    t.integer  "haggle_id",              null: false
    t.integer  "intention",  default: 1, null: false
    t.decimal  "price"
    t.float    "quantity"
    t.boolean  "meet_you"
    t.boolean  "meet_me"
    t.boolean  "meet_half"
    t.boolean  "ship_you"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "offers", ["haggle_id"], name: "index_offers_on_haggle_id"

end
