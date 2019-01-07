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

ActiveRecord::Schema.define(version: 2019_01_07_120631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "company_names", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "logo"
    t.string "associated_ico"
    t.string "trading_preferences"
    t.string "supplier_number"
    t.bigint "provenance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provenance_id"], name: "index_company_names_on_provenance_id"
  end

  create_table "containers", force: :cascade do |t|
    t.integer "quantity"
    t.string "container_number"
    t.date "eta"
    t.integer "weight"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
  end

  create_table "elements", force: :cascade do |t|
    t.boolean "unique_label"
    t.string "label"
    t.string "status_available"
    t.boolean "has_nested_element"
    t.bigint "company_name_id"
    t.bigint "unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_name_id"], name: "index_elements_on_company_name_id"
    t.index ["unit_id"], name: "index_elements_on_unit_id"
  end

  create_table "etiquettes", force: :cascade do |t|
    t.integer "weight_sent"
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sample_id"], name: "index_etiquettes_on_sample_id"
  end

  create_table "nested_elements", force: :cascade do |t|
    t.boolean "unique_label"
    t.string "label"
    t.bigint "element_id"
    t.bigint "unit_id"
    t.bigint "provenance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_nested_elements_on_element_id"
    t.index ["provenance_id"], name: "index_nested_elements_on_provenance_id"
    t.index ["unit_id"], name: "index_nested_elements_on_unit_id"
  end

  create_table "potential_clients", force: :cascade do |t|
    t.bigint "sample_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "client_id"
    t.index ["sample_id"], name: "index_potential_clients_on_sample_id"
  end

  create_table "provenances", force: :cascade do |t|
    t.string "name"
    t.string "prefix"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rights", force: :cascade do |t|
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "samples", force: :cascade do |t|
    t.string "stage"
    t.string "status"
    t.text "comment"
    t.integer "quantity_available"
    t.string "potential_application"
    t.string "sample_number"
    t.integer "weight"
    t.bigint "provenance_id"
    t.bigint "container_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "exporter_id"
    t.integer "trader_id"
    t.index ["container_id"], name: "index_samples_on_container_id"
    t.index ["provenance_id"], name: "index_samples_on_provenance_id"
  end

  create_table "samples_elements", force: :cascade do |t|
    t.bigint "sample_id"
    t.bigint "element_id"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["element_id"], name: "index_samples_elements_on_element_id"
    t.index ["sample_id"], name: "index_samples_elements_on_sample_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "sample_type"
    t.bigint "right_id"
    t.bigint "company_name_id"
    t.index ["company_name_id"], name: "index_users_on_company_name_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["right_id"], name: "index_users_on_right_id"
  end

  add_foreign_key "company_names", "provenances"
  add_foreign_key "containers", "users", column: "client_id"
  add_foreign_key "elements", "company_names"
  add_foreign_key "elements", "units"
  add_foreign_key "etiquettes", "samples"
  add_foreign_key "nested_elements", "elements"
  add_foreign_key "nested_elements", "provenances"
  add_foreign_key "nested_elements", "units"
  add_foreign_key "potential_clients", "samples"
  add_foreign_key "potential_clients", "users", column: "client_id"
  add_foreign_key "samples", "containers"
  add_foreign_key "samples", "provenances"
  add_foreign_key "samples", "users", column: "exporter_id"
  add_foreign_key "samples", "users", column: "trader_id"
  add_foreign_key "samples_elements", "elements"
  add_foreign_key "samples_elements", "samples"
  add_foreign_key "users", "company_names"
  add_foreign_key "users", "rights"
end
