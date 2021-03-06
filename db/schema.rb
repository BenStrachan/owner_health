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

ActiveRecord::Schema.define(version: 20170220101341) do

  create_table "appointment_types", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "description"
    t.string   "price"
    t.string   "item_number"
    t.string   "duration"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_appointment_types_on_user_id"
  end

  create_table "availabilities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "start"
    t.datetime "end"
    t.integer  "max_appointment"
    t.integer  "service_radius"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.string   "repeat_frequency"
    t.integer  "repeat_total"
    t.string   "appointment_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["user_id"], name: "index_availabilities_on_user_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "postocde"
    t.string   "country"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "home_phone"
    t.string   "mobile_phone"
    t.string   "work_phone"
    t.string   "email"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_patients_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "business_name"
    t.string   "phone"
    t.string   "mobile"
    t.string   "email"
    t.string   "website"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "AHPRA"
    t.string   "medicare"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "treatment_notes", force: :cascade do |t|
    t.integer  "patient_id"
    t.string   "appointment"
    t.string   "practitioner"
    t.text     "text"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["patient_id"], name: "index_treatment_notes_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                    default: "", null: false
    t.string   "encrypted_password",       default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",            default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "street_address"
    t.string   "city"
    t.string   "state"
    t.string   "postcode"
    t.string   "country"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "business_name"
    t.string   "ahpra"
    t.string   "medicare_provider_number"
    t.string   "website"
    t.string   "phone"
    t.string   "mobile"
    t.string   "business_email"
    t.string   "fax"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
