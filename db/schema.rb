# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_17_184903) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendars", force: :cascade do |t|
    t.text "calendar_name"
  end

  create_table "days", force: :cascade do |t|
    t.integer "day_number"
    t.string "day_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "month_id", null: false
    t.integer "status", default: 0, null: false
    t.index ["month_id"], name: "index_days_on_month_id"
  end

  create_table "days_months", id: false, force: :cascade do |t|
    t.bigint "month_id", null: false
    t.bigint "day_id", null: false
    t.index ["day_id", "month_id"], name: "index_days_months_on_day_id_and_month_id"
    t.index ["month_id", "day_id"], name: "index_days_months_on_month_id_and_day_id"
  end

  create_table "months", force: :cascade do |t|
    t.integer "month_number"
    t.string "month_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "year_id", null: false
    t.index ["year_id"], name: "index_months_on_year_id"
  end

  create_table "months_years", id: false, force: :cascade do |t|
    t.bigint "year_id", null: false
    t.bigint "month_id", null: false
    t.index ["month_id", "year_id"], name: "index_months_years_on_month_id_and_year_id"
    t.index ["year_id", "month_id"], name: "index_months_years_on_year_id_and_month_id"
  end

  create_table "notes", force: :cascade do |t|
    t.text "note_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "year_id", null: false
    t.index ["year_id"], name: "index_notes_on_year_id"
  end

  create_table "years", force: :cascade do |t|
    t.integer "year_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "days", "months"
  add_foreign_key "months", "years"
  add_foreign_key "notes", "years"
end
