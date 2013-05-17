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

ActiveRecord::Schema.define(:version => 20130517074805) do

  create_table "Dog_parks", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.float    "latitude",   :limit => 255
    t.float    "longitude",  :limit => 255
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
    t.boolean  "gmaps"
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "human_genders", :force => true do |t|
    t.string   "gender"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "human_relationships", :force => true do |t|
    t.string   "relationship"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "park_votes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "park_id"
    t.string   "user_comment"
    t.integer  "rating"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pet_details", :force => true do |t|
    t.integer  "user_id"
    t.string   "pet_type"
    t.string   "gender"
    t.integer  "age"
    t.string   "name"
    t.string   "desc"
    t.string   "homepark"
    t.string   "fav_toy"
    t.string   "fav_park"
    t.string   "kind1"
    t.string   "kind2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "photo_albums", :force => true do |t|
    t.integer  "user_id"
    t.string   "file_name"
    t.string   "file_title"
    t.string   "file_desc"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "user_details", :force => true do |t|
    t.integer  "user_id"
    t.string   "country"
    t.string   "zipcode"
    t.string   "city"
    t.string   "desc"
    t.string   "is_straight"
    t.string   "gender"
    t.date     "birthday"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.string   "email"
  end

  create_table "videos", :force => true do |t|
    t.integer  "user_id"
    t.string   "video_title"
    t.string   "video_link"
    t.integer  "video_numb_view"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
