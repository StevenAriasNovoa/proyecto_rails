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

ActiveRecord::Schema[7.0].define(version: 2023_10_23_202428) do
  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_technologies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "technologies_id", null: false
    t.integer "projects_id", null: false
    t.index ["projects_id"], name: "index_project_technologies_on_projects_id"
    t.index ["technologies_id"], name: "index_project_technologies_on_technologies_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "task"
    t.date "star_date"
    t.date "end_date"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "users_id", null: false
    t.index ["users_id"], name: "index_projects_on_users_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "type_skills_id", null: false
    t.index ["type_skills_id"], name: "index_skills_on_type_skills_id"
  end

  create_table "social_links", force: :cascade do |t|
    t.string "name_link"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "type_technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "technologies_id", null: false
    t.index ["technologies_id"], name: "index_type_technologies_on_technologies_id"
  end

  create_table "user_skills", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "skills_id", null: false
    t.integer "users_id", null: false
    t.index ["skills_id"], name: "index_user_skills_on_skills_id"
    t.index ["users_id"], name: "index_user_skills_on_users_id"
  end

  create_table "user_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_user_types", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_types_id", null: false
    t.integer "users_id", null: false
    t.index ["user_types_id"], name: "index_user_user_types_on_user_types_id"
    t.index ["users_id"], name: "index_user_user_types_on_users_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name_users"
    t.string "description_users"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.integer "social_links_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["social_links_id"], name: "index_users_on_social_links_id"
  end

  add_foreign_key "project_technologies", "projects", column: "projects_id"
  add_foreign_key "project_technologies", "technologies", column: "technologies_id"
  add_foreign_key "projects", "users", column: "users_id"
  add_foreign_key "skills", "type_skills", column: "type_skills_id"
  add_foreign_key "type_technologies", "technologies", column: "technologies_id"
  add_foreign_key "user_skills", "skills", column: "skills_id"
  add_foreign_key "user_skills", "users", column: "users_id"
  add_foreign_key "user_user_types", "user_types", column: "user_types_id"
  add_foreign_key "user_user_types", "users", column: "users_id"
  add_foreign_key "users", "social_links", column: "social_links_id"
end
