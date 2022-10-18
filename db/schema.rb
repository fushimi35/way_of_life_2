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

ActiveRecord::Schema.define(version: 2022_10_17_115543) do

  create_table "answers", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "question_id", null: false
    t.integer "detail_id", null: false
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["detail_id"], name: "index_answers_on_detail_id"
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "blocks", force: :cascade do |t|
    t.integer "section_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_blocks_on_section_id"
  end

  create_table "boards", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "privacy"
    t.integer "ideal_id"
    t.integer "concern_id"
    t.index ["concern_id"], name: "index_boards_on_concern_id"
    t.index ["ideal_id"], name: "index_boards_on_ideal_id"
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "concerns", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "details", force: :cascade do |t|
    t.integer "section_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["section_id"], name: "index_details_on_section_id"
  end

  create_table "ideals", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "small_block_id"
    t.string "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["small_block_id"], name: "index_questions_on_small_block_id"
  end

  create_table "sections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "small_blocks", force: :cascade do |t|
    t.integer "block_id", null: false
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["block_id"], name: "index_small_blocks_on_block_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "nickname"
    t.integer "last_education"
    t.integer "major"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "answers", "details"
  add_foreign_key "answers", "questions"
  add_foreign_key "answers", "users"
  add_foreign_key "blocks", "sections"
  add_foreign_key "boards", "concerns"
  add_foreign_key "boards", "ideals"
  add_foreign_key "boards", "users"
  add_foreign_key "details", "sections"
  add_foreign_key "questions", "small_blocks"
  add_foreign_key "small_blocks", "blocks"
end
