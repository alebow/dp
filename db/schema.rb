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

ActiveRecord::Schema.define(:version => 20130529025448) do

  create_table "associates", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "bio"
    t.integer  "group_id"
    t.boolean  "admin"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "associates", ["email"], :name => "index_associates_on_email", :unique => true
  add_index "associates", ["remember_token"], :name => "index_associates_on_remember_token"

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "short_description"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.string   "nickname"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locations", :force => true do |t|
    t.integer  "company_id"
    t.boolean  "headquarters"
    t.string   "address"
    t.string   "address_2"
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "country"
    t.string   "phone_number"
    t.string   "country_code"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "searches", :force => true do |t|
    t.integer  "company_id"
    t.string   "position"
    t.boolean  "confidential"
    t.boolean  "open"
    t.string   "exec_level"
    t.string   "exec_function"
    t.integer  "fee"
    t.string   "person_hired"
    t.string   "hired_from"
    t.integer  "comp_base"
    t.integer  "comp_bonus"
    t.string   "notes"
    t.integer  "associate_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
