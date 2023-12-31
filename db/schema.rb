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

ActiveRecord::Schema[7.0].define(version: 2022_12_07_201458) do
  create_table "admins", force: :cascade do |t|
    t.string "namedotnumber"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string "subject"
    t.string "number"
    t.string "semester"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admin_id", null: false
    t.index ["admin_id"], name: "index_courses_on_admin_id"
  end

  create_table "evaluations", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "project_evaluations", force: :cascade do |t|
    t.string "overall"
    t.string "implementation"
    t.string "documentation"
    t.string "testing"
    t.string "meeting"
    t.string "best_qualities"
    t.string "improve_on"
    t.string "professor"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teamid"
  end

  create_table "students", force: :cascade do |t|
    t.string "namedotnumber"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students_teams", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "team_id", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "course_id", null: false
    t.string "name", null: false
    t.index ["course_id"], name: "index_teams_on_course_id"
  end

  create_table "tech_task_evaluations", force: :cascade do |t|
    t.string "overall"
    t.string "research"
    t.string "presentation"
    t.string "best_qualities"
    t.string "improve_on"
    t.string "professor"
    t.string "other"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teamid"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
    t.string "first_name"
    t.string "last_name"
    t.string "namedotnumber"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "courses", "admins"
  add_foreign_key "teams", "courses"
end
