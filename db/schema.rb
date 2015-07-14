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

ActiveRecord::Schema.define(version: 20150712024321) do

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

  add_index "interview_slots", ["interview_id"], name: "index_interview_slots_on_interview_id"

  create_table "interviews", force: :cascade do |t|
    t.string   "name"
    t.string   "lastName"
    t.string   "email"
    t.string   "phoneNumber"
    t.string   "interviewTime"
    t.string   "interviewField"
    t.text     "message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "interviewStatus"
    t.integer  "interviewID_id"
  end

  add_index "interviews", ["interviewID_id"], name: "index_interviews_on_interviewID_id"

end
