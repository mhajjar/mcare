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

ActiveRecord::Schema.define(version: 20131102213259) do

  create_table "employees", force: true do |t|
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "EmployeeId"
    t.string   "EmailAddress"
    t.string   "Department"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "medical_providers", force: true do |t|
    t.string   "Specialty"
    t.string   "street"
    t.string   "City"
    t.string   "Zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "providers", force: true do |t|
    t.string   "Name"
    t.string   "Street"
    t.string   "City"
    t.string   "State"
    t.string   "Zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
