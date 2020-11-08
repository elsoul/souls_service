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

ActiveRecord::Schema.define(version: 2020_08_17_202719) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "article_categories", force: :cascade do |t|
    t.string "name"
    t.integer "total_articles"
    t.text "tag", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "article_series", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "article_series_category_id", null: false
    t.integer "total_episodes", default: 0
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_series_category_id"], name: "index_article_series_on_article_series_category_id"
    t.index ["name"], name: "index_article_series_on_name"
  end

  create_table "article_series_categories", force: :cascade do |t|
    t.string "name"
    t.integer "total_article_series"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles", force: :cascade do |t|
    t.string "user_id"
    t.string "title"
    t.text "body"
    t.string "thumnail_url"
    t.string "public_date"
    t.bigint "article_category_id", null: false
    t.boolean "is_public"
    t.text "tag", default: [], array: true
    t.boolean "has_series"
    t.integer "series_id"
    t.integer "episode_num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_category_id"], name: "index_articles_on_article_category_id"
    t.index ["has_series"], name: "index_articles_on_has_series"
    t.index ["is_public"], name: "index_articles_on_is_public"
    t.index ["title"], name: "index_articles_on_title"
    t.index ["user_id"], name: "index_articles_on_user_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
    t.integer "total_tags", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "article_series", "article_series_categories"
  add_foreign_key "articles", "article_categories"
end
