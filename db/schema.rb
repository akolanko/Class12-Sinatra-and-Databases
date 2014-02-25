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

ActiveRecord::Schema.define(version: 20140225032438) do

  create_table "addresses", force: true do |t|
    t.string  "street"
    t.string  "city"
    t.string  "state"
    t.string  "country"
    t.integer "zip"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "content"
    t.datetime "datetime"
    t.integer  "user_id"
  end

  create_table "profiles", force: true do |t|
    t.string  "gender"
    t.string  "birthday"
    t.string  "religion"
    t.string  "status"
    t.integer "user_id"
  end

  create_table "rooms", force: true do |t|
    t.integer "number"
    t.integer "floor"
    t.boolean "suite"
  end

  create_table "user_addresses", force: true do |t|
    t.integer "user_id"
    t.integer "address_id"
  end

  create_table "user_rooms", force: true do |t|
    t.integer "user_id"
    t.integer "room_id"
  end

  create_table "users", force: true do |t|
    t.string "fname"
    t.string "lname"
    t.string "email"
  end

end
