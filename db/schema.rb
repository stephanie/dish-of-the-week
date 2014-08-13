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

ActiveRecord::Schema.define(version: 20131125075839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: true do |t|
    t.string   "restaurant_id"
    t.string   "type"
    t.string   "dish_name"
    t.text     "dish_description"
    t.string   "price"
    t.string   "blog_link"
    t.boolean  "is_accepted",      default: false
    t.string   "published_on"
    t.integer  "up_vote",          default: 0
    t.integer  "down_vote",        default: 0
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  add_index "dishes", ["restaurant_id"], name: "index_dishes_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "tel"
    t.string   "cuisine_type"
    t.string   "price_range"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "restaurant_id"
    t.string   "score"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id", using: :btree

end
