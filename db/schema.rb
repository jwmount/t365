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

ActiveRecord::Schema.define(version: 2019_03_01_194140) do

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
    t.string "addressable_type"
    t.string "company_type"
    t.bigint "company_id"
    t.string "person_type"
    t.bigint "person_id"
    t.string "street_address", default: "", null: false
    t.string "city", default: "", null: false
    t.string "state", limit: 2, default: "", null: false
    t.string "post_code", default: "", null: false
    t.string "map_reference", default: "", null: false
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", default: "2013-10-08 00:00:00", null: false
    t.datetime "updated_at", default: "2013-10-08 00:00:00", null: false
    t.index ["company_type", "company_id"], name: "index_addresses_on_company_type_and_company_id"
    t.index ["person_type", "person_id"], name: "index_addresses_on_person_type_and_person_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "encrypted_password"
    t.string "encrypted_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certificates", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "for_person"
    t.boolean "for_company"
    t.boolean "for_equipment"
    t.boolean "for_location"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certs", force: :cascade do |t|
    t.string "require_type"
    t.bigint "require_id"
    t.integer "certifiable_id"
    t.datetime "expires_on"
    t.string "serial_number"
    t.boolean "permanent"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["require_type", "require_id"], name: "index_certs_on_require_type_and_require_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.integer "credit_terms", default: 30, null: false
    t.boolean "PO_required", default: false, null: false
    t.boolean "active", default: true, null: false
    t.string "bookkeeping_number", default: "00000", null: false
    t.string "line_of_business", default: "", null: false
    t.string "url", default: "", null: false
    t.boolean "licensee", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conditions", force: :cascade do |t|
    t.string "name"
    t.text "verbiage"
    t.string "indication"
    t.boolean "status"
    t.boolean "approved"
    t.string "change_approved_by"
    t.datetime "change_approved_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dockets", force: :cascade do |t|
    t.integer "engagement_id"
    t.integer "person_id"
    t.string "number"
    t.datetime "date_worked"
    t.datetime "dated"
    t.datetime "received_on"
    t.boolean "operator_signed"
    t.boolean "client_signed"
    t.boolean "approved"
    t.datetime "approved_on"
    t.string "approved_by"
    t.decimal "a_inv_pay", precision: 7, scale: 2
    t.decimal "b_inv_pay", precision: 7, scale: 2
    t.decimal "supplier_inv_pay", precision: 7, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "engagements", force: :cascade do |t|
    t.integer "schedule_id"
    t.integer "person_id"
    t.integer "docket_id"
    t.string "docket_number"
    t.boolean "onsite_now"
    t.boolean "onsite_at"
    t.boolean "breakdown"
    t.boolean "no_show"
    t.integer "OK_tomorrow"
    t.boolean "engagement_declined"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "identifiers", force: :cascade do |t|
    t.integer "identifiable_id", null: false
    t.string "identifiable_type"
    t.string "company_type"
    t.bigint "company_id"
    t.string "person_type"
    t.bigint "person_id"
    t.string "name"
    t.string "value"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_type", "company_id"], name: "index_identifiers_on_company_type_and_company_id"
    t.index ["person_type", "person_id"], name: "index_identifiers_on_person_type_and_person_id"
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

  create_table "materials", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "people", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "company_id"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_people_on_email", unique: true
    t.index ["reset_password_token"], name: "index_people_on_reset_password_token", unique: true
  end

  create_table "people_schedules", force: :cascade do |t|
    t.integer "person_id"
    t.integer "schedule_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
    t.integer "rep_id"
    t.datetime "project_start_on"
    t.string "description"
    t.boolean "active"
    t.integer "intend_to_bid"
    t.integer "submitted_bid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.integer "project_id"
    t.integer "quote_to_id"
    t.integer "rep_id"
    t.string "name"
    t.boolean "fire_ants"
    t.string "fire_ants_verified_by"
    t.text "inclusions"
    t.datetime "expected_start"
    t.integer "duration"
    t.string "council"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requirements", force: :cascade do |t|
    t.string "require_type"
    t.bigint "require_id"
    t.integer "certificate_id"
    t.boolean "for_person"
    t.boolean "for_company"
    t.boolean "for_location"
    t.boolean "preference"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["require_type", "require_id"], name: "index_requirements_on_require_type_and_require_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "schedule_id"
    t.integer "equipment_id"
    t.integer "number_requested"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "day"
    t.integer "job_id"
    t.integer "equipment_units_today"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solution_tips", force: :cascade do |t|
    t.integer "solution_id"
    t.integer "tip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solutions", force: :cascade do |t|
    t.boolean "approved"
    t.boolean "client_approved"
    t.integer "drive_time_from_load_to_tip"
    t.integer "drive_time_into_site"
    t.integer "drive_time_into_tip"
    t.integer "drive_time_out_of_site"
    t.integer "drive_time_out_of_tip_site"
    t.integer "drive_time_tip_to_load"
    t.string "equipment_name"
    t.decimal "equipment_dollars_per_day", precision: 7, scale: 2
    t.integer "equipment_units_required_per_day"
    t.decimal "hourly_hire_rate", precision: 7, scale: 2
    t.decimal "invoice_load_client", precision: 7, scale: 2
    t.decimal "invoice_tip_client", precision: 7, scale: 2
    t.integer "kms_one_way"
    t.integer "load_time"
    t.integer "loads_per_day"
    t.integer "material_id"
    t.string "name"
    t.decimal "pay_equipment_per_unit", precision: 7, scale: 2
    t.decimal "pay_load_client", precision: 7, scale: 2
    t.decimal "pay_tip_client", precision: 7, scale: 2
    t.decimal "pay_tip", precision: 7, scale: 2
    t.decimal "pay_tolls", precision: 7, scale: 2
    t.boolean "purchase_order_required"
    t.integer "quote_id"
    t.string "solution_type"
    t.boolean "semis_permitted"
    t.integer "total_material"
    t.string "unit_of_material"
    t.integer "unload_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tips", force: :cascade do |t|
    t.string "name"
    t.integer "company_id"
    t.decimal "fee"
    t.string "fire_ant_risk_level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
