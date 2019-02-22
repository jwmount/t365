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

ActiveRecord::Schema.define(version: 2019_02_22_183452) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "addresses", force: :cascade do |t|
    t.integer "addressable_id", null: false
    t.string "addressable_type", null: false
    t.string "street_address", default: "", null: false
    t.string "city", default: "", null: false
    t.string "state", limit: 2, default: "", null: false
    t.string "post_code", default: "", null: false
    t.string "map_reference", default: "", null: false
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", default: "2013-10-08 00:00:00", null: false
    t.datetime "updated_at", default: "2013-10-08 00:00:00", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "credit_terms", default: 30, null: false
    t.boolean "PO_required", default: false, null: false
    t.boolean "active", default: true, null: false
    t.string "bookkeeping_number", default: "00000", null: false
    t.string "line_of_business", default: "", null: false
    t.string "url", default: "", null: false
    t.boolean "license", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "solution_id", null: false
    t.datetime "start_on", null: false
    t.string "time", default: "", null: false
    t.string "name", default: "", null: false
    t.datetime "finished_on", null: false
    t.string "purchase_order", default: "", null: false
    t.boolean "active", default: false, null: false
    t.boolean "complete", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

end
