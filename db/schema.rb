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

ActiveRecord::Schema.define(version: 20151006183429) do

  create_table "brands", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "class1s", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string   "identity",         limit: 255
    t.text     "lastname",         limit: 65535
    t.text     "address",          limit: 65535
    t.integer  "category_id",      limit: 4
    t.string   "class1",           limit: 255
    t.date     "expeditiondate"
    t.date     "revalidationdate"
    t.string   "numberlicense",    limit: 255
    t.date     "dateexpiry"
    t.date     "birthdate"
    t.integer  "sex_id",           limit: 4
    t.integer  "status_id",        limit: 4
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  add_index "drivers", ["category_id"], name: "index_drivers_on_category_id", using: :btree
  add_index "drivers", ["sex_id"], name: "index_drivers_on_sex_id", using: :btree
  add_index "drivers", ["status_id"], name: "index_drivers_on_status_id", using: :btree

  create_table "models", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "lastnameandname",  limit: 255
    t.string   "dni",              limit: 255
    t.string   "phone1",           limit: 255
    t.string   "phone2",           limit: 255
    t.string   "mail",             limit: 255
    t.date     "reservationdate"
    t.time     "whenbooking"
    t.string   "point",            limit: 255
    t.string   "startingdistrict", limit: 255
    t.string   "pointofarrival",   limit: 255
    t.string   "districtarrival",  limit: 255
    t.integer  "status_id",        limit: 4
    t.decimal  "cost",                         precision: 10
    t.integer  "driver_id",        limit: 4
    t.integer  "vehicle_id",       limit: 4
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  add_index "reservations", ["driver_id"], name: "index_reservations_on_driver_id", using: :btree
  add_index "reservations", ["status_id"], name: "index_reservations_on_status_id", using: :btree
  add_index "reservations", ["vehicle_id"], name: "index_reservations_on_vehicle_id", using: :btree

  create_table "sexes", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "typeofvehicles", force: :cascade do |t|
    t.string   "description", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "licenseplate",        limit: 255
    t.integer  "brand_id",            limit: 4
    t.integer  "model_id",            limit: 4
    t.string   "manufacturingyear",   limit: 255
    t.decimal  "weight",                          precision: 10
    t.decimal  "width",                           precision: 10
    t.decimal  "grossweight",                     precision: 10
    t.decimal  "dryweight",                       precision: 10
    t.decimal  "usefulload",                      precision: 10
    t.integer  "typeofvehicle_id",    limit: 4
    t.date     "datesoat"
    t.date     "datetechnicalreview"
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "vehicles", ["brand_id"], name: "index_vehicles_on_brand_id", using: :btree
  add_index "vehicles", ["model_id"], name: "index_vehicles_on_model_id", using: :btree
  add_index "vehicles", ["typeofvehicle_id"], name: "index_vehicles_on_typeofvehicle_id", using: :btree

  add_foreign_key "drivers", "categories"
  add_foreign_key "drivers", "sexes"
  add_foreign_key "drivers", "statuses"
  add_foreign_key "reservations", "drivers"
  add_foreign_key "reservations", "statuses"
  add_foreign_key "reservations", "vehicles"
  add_foreign_key "vehicles", "brands"
  add_foreign_key "vehicles", "models"
  add_foreign_key "vehicles", "typeofvehicles"
end
