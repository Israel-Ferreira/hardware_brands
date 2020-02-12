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

ActiveRecord::Schema.define(version: 2020_02_12_030731) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hardware_brands", force: :cascade do |t|
    t.string "description"
    t.string "country"
    t.string "logo_image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hardware_types", force: :cascade do |t|
    t.string "description"
    t.string "acronym"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.bigint "hardware_type_id", null: false
    t.bigint "hardware_brand_id", null: false
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hardware_brand_id"], name: "index_products_on_hardware_brand_id"
    t.index ["hardware_type_id"], name: "index_products_on_hardware_type_id"
  end

  add_foreign_key "products", "hardware_brands"
  add_foreign_key "products", "hardware_types"
end
