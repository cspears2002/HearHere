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

ActiveRecord::Schema.define(version: 20131109012435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "sounds", force: true do |t|
    t.string   "description"
    t.integer  "rating"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sound_file_file_name"
    t.string   "sound_file_content_type"
    t.integer  "sound_file_file_size"
    t.datetime "sound_file_updated_at"
  end

  add_index "sounds", ["user_id"], name: "index_sounds_on_user_id", using: :btree

  create_table "tags", force: true do |t|
    t.string   "tag_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "password"
    t.integer  "rating"
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_confirmation"
    t.string   "hashed_password"
    t.string   "salt"
  end

end
