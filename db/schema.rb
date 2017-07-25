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

ActiveRecord::Schema.define(version: 20170207044440) do

  create_table "examinees", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "relationship"
    t.integer  "sex"
    t.string   "tel"
    t.string   "zipcode"
    t.string   "address"
    t.date     "implementation_period"
    t.text     "remarks"
    t.boolean  "deleteflg",             default: false
    t.integer  "office_id"
    t.integer  "medical_id"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.index ["medical_id"], name: "index_examinees_on_medical_id"
    t.index ["office_id"], name: "index_examinees_on_office_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "dayoftheweek"
    t.string   "tel"
    t.string   "zipcode"
    t.string   "address"
    t.boolean  "jcbflg"
    t.text     "remarks"
    t.boolean  "deleteflg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "inspectionitems", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.integer  "amountofmone"
    t.integer  "subsidy"
    t.text     "remarks"
    t.boolean  "hospitalflg"
    t.boolean  "deleteflg"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "medicals", force: :cascade do |t|
    t.string   "name"
    t.date     "str_application_period"
    t.date     "end_application_period"
    t.date     "str_implementation_period"
    t.date     "end_implementation_period"
    t.text     "remarks"
    t.boolean  "deleteflg"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "offices", force: :cascade do |t|
    t.string   "name"
    t.integer  "number"
    t.string   "tel"
    t.string   "zipcode"
    t.string   "address"
    t.string   "responsibleperson"
    t.boolean  "deleteflg"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sexes", force: :cascade do |t|
    t.integer  "number"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "enpno"
    t.string   "authority"
    t.string   "password_digest"
    t.string   "remember_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
