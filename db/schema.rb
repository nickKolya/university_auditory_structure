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

ActiveRecord::Schema.define(version: 20180511070149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "pgcrypto"

  create_table "auditories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_double_tables", default: 0, null: false
    t.integer "number_of_triple_tables", default: 0, null: false
    t.boolean "dais", default: false, null: false
    t.boolean "interactive_whiteboard", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "base_room_joins", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "base_room_id", null: false
    t.uuid "target_id", null: false
    t.string "target_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["base_room_id"], name: "index_base_room_joins_on_base_room_id"
    t.index ["target_id"], name: "index_base_room_joins_on_target_id"
  end

  create_table "base_rooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "number", default: "", null: false
    t.string "name", default: "", null: false
    t.float "square"
    t.boolean "trash_bin", default: false, null: false
    t.boolean "wifi", default: false, null: false
    t.boolean "projector", default: false, null: false
    t.boolean "air_conditioner", default: false, null: false
    t.integer "number_of_tables", default: 0, null: false
    t.integer "number_of_chairs", default: 0, null: false
    t.integer "number_of_sockets", default: 0, null: false
    t.integer "number_of_switches", default: 0, null: false
    t.integer "number_of_seats", default: 0, null: false
    t.integer "number_of_entrances", default: 0, null: false
    t.integer "number_of_windowses", default: 0, null: false
    t.integer "number_of_lights", default: 0, null: false
    t.integer "number_of_rooms", default: 0, null: false
    t.jsonb "additional_info", default: "{}", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "category_id"
    t.index ["additional_info"], name: "index_base_rooms_on_additional_info", using: :gin
  end

  create_table "categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computer_labs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_computers", default: 0, null: false
    t.boolean "interactive_whiteboard", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conference_rooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_microphones", default: 0, null: false
    t.integer "number_of_monitors", default: 0, null: false
    t.boolean "translation_equipment", default: false, null: false
    t.boolean "stereo_system", default: false, null: false
    t.boolean "flipchart", default: false, null: false
    t.boolean "light_system", default: false, null: false
    t.boolean "dais", default: false, null: false
    t.boolean "coffee_break", default: false, null: false
    t.boolean "wardrobe", default: false, null: false
    t.boolean "balcony", default: false, null: false
    t.string "type", default: "ConferenceRoom", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dining_rooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_benches", default: 0, null: false
    t.integer "number_of_ovens", default: 0, null: false
    t.integer "number_of_cookers", default: 0, null: false
    t.integer "number_of_kettles", default: 0, null: false
    t.integer "number_of_pans", default: 0, null: false
    t.integer "number_of_cash_registers", default: 0, null: false
    t.boolean "emergency_exit", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_shelves", default: 0, null: false
    t.integer "number_of_benches", default: 0, null: false
    t.integer "number_of_computers", default: 0, null: false
    t.integer "number_of_printers", default: 0, null: false
    t.integer "number_of_speakers", default: 0, null: false
    t.integer "number_of_headphones", default: 0, null: false
    t.integer "number_of_blackboards", default: 0, null: false
    t.boolean "emergency_exit", default: false, null: false
    t.boolean "plants", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "museums", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_exhibits", default: 0, null: false
    t.integer "number_of_floors", default: 0, null: false
    t.integer "number_of_computers", default: 0, null: false
    t.boolean "national_treasures", default: false, null: false
    t.boolean "background_music", default: false, null: false
    t.boolean "presence_of_guide", default: false, null: false
    t.boolean "emergency_exit", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "office_spaces", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.boolean "emergency_exit", default: false, null: false
    t.integer "number_of_cumputers", default: 0, null: false
    t.integer "number_of_printers", default: 0, null: false
    t.integer "number_of_phones", default: 0, null: false
    t.integer "number_of_bookcases", default: 0, null: false
    t.integer "number_of_organizer", default: 0, null: false
    t.integer "number_of_clocks", default: 0, null: false
    t.integer "number_of_tvs", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "sanitary_rooms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_brooms", default: 0, null: false
    t.integer "number_of_scoopes", default: 0, null: false
    t.integer "number_of_mops", default: 0, null: false
    t.integer "number_of_rags", default: 0, null: false
    t.integer "number_of_gloves", default: 0, null: false
    t.integer "number_of_buckets", default: 0, null: false
    t.integer "number_of_mirrors", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "scientific_labs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_test_tubes", default: 0, null: false
    t.integer "number_of_microscopes", default: 0, null: false
    t.integer "number_of_shredders", default: 0, null: false
    t.integer "number_of_stands", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  create_table "wardrobes", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "number_of_benches", default: 0, null: false
    t.integer "number_of_hangers", default: 0, null: false
    t.integer "number_of_coat_tags", default: 0, null: false
    t.integer "number_of_locked_cells", default: 0, null: false
    t.integer "number_of_mirrors", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
