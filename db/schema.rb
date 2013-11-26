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

ActiveRecord::Schema.define(version: 20131126014754) do

  create_table "accolade_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "accolades", force: true do |t|
    t.integer  "accolade_category_id"
    t.text     "description"
    t.string   "title"
    t.string   "additional_info"
    t.string   "link_address"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "countries", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "name"
    t.integer  "office_id"
    t.string   "country"
    t.integer  "position_id"
    t.string   "education"
    t.text     "bio"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar"
  end

  create_table "offices", force: true do |t|
    t.string   "city"
    t.string   "country"
    t.text     "address"
    t.string   "email"
    t.string   "website"
    t.string   "twitter"
    t.string   "pinterest"
    t.string   "mailchimp"
    t.string   "mixcloud"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image"
  end

  create_table "portfolio_galleries", force: true do |t|
    t.integer  "portfolio_id"
    t.string   "text"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portfolios", force: true do |t|
    t.string   "project_name"
    t.string   "shorttext"
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.integer  "year"
    t.string   "area"
    t.integer  "type_id"
    t.boolean  "interior"
    t.boolean  "installation"
    t.boolean  "research"
    t.string   "blurb"
    t.text     "copy"
    t.string   "img_credits_name"
    t.string   "img_credits_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published"
  end

  create_table "positions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "press_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "presses", force: true do |t|
    t.integer  "press_category_id"
    t.text     "description"
    t.string   "title"
    t.string   "additional_info"
    t.text     "quote"
    t.string   "link_address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "published"
    t.string   "image"
  end

  create_table "states", force: true do |t|
    t.integer  "country_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
