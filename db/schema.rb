# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_06_014257) do

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "ssn"
    t.datetime "dob"
    t.string "sex"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.string "email"
    t.integer "phone"
    t.integer "license_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "records", force: :cascade do |t|
    t.integer "patient_id", null: false
    t.integer "provider_id", null: false
    t.string "location"
    t.datetime "booster_date"
    t.boolean "second_shot"
    t.integer "first_shot_record_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_records_on_patient_id"
    t.index ["provider_id"], name: "index_records_on_provider_id"
  end

  add_foreign_key "records", "patients"
  add_foreign_key "records", "providers"
end
