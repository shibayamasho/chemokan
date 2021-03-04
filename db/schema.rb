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

ActiveRecord::Schema.define(version: 2021_03_04_055011) do

  create_table "diseases", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "cancer_id", null: false
    t.integer "other_id", null: false
    t.integer "purpose_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "gender_id", null: false
    t.date "birthday", null: false
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "regimen", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "period", null: false
    t.integer "emetic_id", null: false
    t.string "nk1"
    t.string "dex"
    t.string "h1blockler"
    t.string "h2blockler"
    t.string "other_medicine"
    t.text "text"
    t.string "medicine_name1", null: false
    t.string "medicine_name2"
    t.string "medicine_name3"
    t.string "medicine_name4"
    t.string "medicine_name5"
    t.string "medicine_name6"
    t.string "medicine_name7"
    t.string "medicinen_name8"
    t.string "abbreviation1", null: false
    t.string "abbreviation2"
    t.string "abbreviation3"
    t.string "abbreviation4"
    t.string "abbreviation5"
    t.string "abbreviation6"
    t.string "abbreviation7"
    t.string "abbreviation8"
    t.float "dose1", null: false
    t.float "dose2"
    t.float "dose3"
    t.float "dose4"
    t.float "dose5"
    t.float "dose6"
    t.float "dose7"
    t.float "dose8"
    t.integer "unit_id1", null: false
    t.integer "unit_id2"
    t.integer "unit_id3"
    t.integer "unit_id4"
    t.integer "unit_id5"
    t.integer "unit_id6"
    t.integer "unit_id7"
    t.integer "unit_id8"
    t.string "schedule1", null: false
    t.string "schedule2"
    t.string "schedule3"
    t.string "schedule4"
    t.string "schedule5"
    t.string "schedule6"
    t.string "schedule7"
    t.string "schedule8"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "treatments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.date "date", null: false
    t.integer "in_out_id", null: false
    t.integer "course", null: false
    t.integer "day", null: false
    t.date "mesuring_date", null: false
    t.float "height", null: false
    t.float "weight", null: false
    t.float "dose1"
    t.float "dose2"
    t.float "dose3"
    t.float "dose4"
    t.float "dose5"
    t.float "dose6"
    t.float "dose7"
    t.float "dose8"
    t.string "nk1"
    t.string "dex"
    t.string "h1blocker"
    t.string "h2blocker"
    t.string "other_medicine"
    t.text "text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "uid", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
