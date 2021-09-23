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

ActiveRecord::Schema.define(version: 2021_09_23_030556) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_frames", force: :cascade do |t|
    t.bigint "board_id"
    t.bigint "frame_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_frames_on_board_id"
    t.index ["frame_id"], name: "index_board_frames_on_frame_id"
  end

  create_table "board_posts", force: :cascade do |t|
    t.bigint "board_id"
    t.bigint "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_posts_on_board_id"
    t.index ["post_id"], name: "index_board_posts_on_post_id"
  end

  create_table "board_stickers", force: :cascade do |t|
    t.bigint "board_id"
    t.bigint "sticker_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["board_id"], name: "index_board_stickers_on_board_id"
    t.index ["sticker_id"], name: "index_board_stickers_on_sticker_id"
  end

  create_table "boards", force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "quote_id"
    t.index ["quote_id"], name: "index_boards_on_quote_id"
    t.index ["user_id"], name: "index_boards_on_user_id"
  end

  create_table "frames", force: :cascade do |t|
    t.string "size"
    t.string "category"
    t.string "coordinates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.text "paragraph"
    t.string "category"
    t.string "coordinates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.text "paragraph"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "init"
  end

  create_table "stickers", force: :cascade do |t|
    t.string "image_url"
    t.string "category"
    t.string "coordinates"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "boards", "quotes"
end
