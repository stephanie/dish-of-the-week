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

ActiveRecord::Schema.define(version: 20131119044345) do

  create_table "dishes", force: true do |t|
    t.integer  "restaurant_id"
    t.string   "course"
    t.string   "dish_name"
    t.text     "dish_description"
    t.binary   "image"
    t.integer  "price"
    t.string   "blog_link"
    t.string   "date_presented"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dishes", ["restaurant_id"], name: "index_dishes_on_restaurant_id"

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "location"
    t.integer  "phone"
    t.string   "cuisine_type"
    t.string   "price_range"
    t.string   "menu_url"
    t.integer  "submission_number"
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

  add_index "reviews", ["restaurant_id"], name: "index_reviews_on_restaurant_id"

  create_table "submissions", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "user_id"
    t.string   "dish_name"
    t.text     "dish_description"
    t.binary   "image"
    t.integer  "price"
    t.string   "blog_link"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "submissions", ["restaurant_id"], name: "index_submissions_on_restaurant_id"
  add_index "submissions", ["user_id"], name: "index_submissions_on_user_id"

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "tagline"
    t.integer  "user_score"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end