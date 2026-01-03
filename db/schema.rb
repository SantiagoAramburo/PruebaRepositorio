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

ActiveRecord::Schema[8.1].define(version: 2026_01_03_004819) do
  create_table "articles", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "bicicleta", force: :cascade do |t|
    t.boolean "activa"
    t.datetime "created_at", null: false
    t.string "marca"
    t.integer "rodada"
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "author"
    t.decimal "average_rating"
    t.datetime "created_at", null: false
    t.date "published"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "make"
    t.string "model"
    t.datetime "updated_at", null: false
    t.integer "year"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "article_id", null: false
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_comments_on_article_id"
  end

  create_table "posts", force: :cascade do |t|
    t.text "body"
    t.datetime "created_at", null: false
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "repairs", force: :cascade do |t|
    t.integer "car_id", null: false
    t.decimal "cost"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "status"
    t.datetime "updated_at", null: false
    t.index ["car_id"], name: "index_repairs_on_car_id"
  end

  create_table "reports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "note"
    t.integer "reportable_id", null: false
    t.string "reportable_type", null: false
    t.datetime "updated_at", null: false
    t.index ["reportable_type", "reportable_id"], name: "index_reports_on_reportable"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "book_id", null: false
    t.text "content"
    t.datetime "created_at", null: false
    t.integer "rating"
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_reviews_on_book_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.boolean "completed"
    t.datetime "created_at", null: false
    t.text "description"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "comments", "articles"
  add_foreign_key "repairs", "cars"
  add_foreign_key "reviews", "books"
end
