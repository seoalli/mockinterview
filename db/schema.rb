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

ActiveRecord::Schema.define(version: 20150807043903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "interview_slots", force: :cascade do |t|
    t.string   "jobType"
    t.string   "nineAM"
    t.string   "nine30AM"
    t.string   "tenAM"
    t.string   "ten30AM"
    t.string   "elevenAM"
    t.string   "eleven30AM"
    t.string   "NOON"
    t.string   "twelve30PM"
    t.string   "onePM"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "interview_id"
  end

  create_table "interviews", force: :cascade do |t|
    t.string   "name"
    t.string   "lastName"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "interviewTime"
    t.string   "interviewField"
    t.text     "message"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "interviewStatus"
    t.string   "slotTimeDescription"
    t.integer  "slotID"
  end

  create_table "user_mailer_autos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_mailers", force: :cascade do |t|
    t.string   "ActionMailer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
