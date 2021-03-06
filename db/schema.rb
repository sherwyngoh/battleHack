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

ActiveRecord::Schema.define(version: 20150328070921) do

  create_table "memorials", force: :cascade do |t|
    t.string   "name"
    t.date     "dob"
    t.date     "dod"
    t.string   "about"
    t.string   "race"
    t.boolean  "guestbook"
    t.string   "wake"
    t.datetime "wake_date"
    t.string   "funeral"
    t.datetime "funeral_date"
    t.string   "theme"
    t.string   "religion"
    t.string   "contact_email"
    t.string   "contact_number"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.datetime "wake_end_date"
    t.datetime "funeral_end_date"
  end

end
