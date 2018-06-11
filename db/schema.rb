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

ActiveRecord::Schema.define(version: 20180528140226) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "tubuyaki_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["created_at"], name: "index_favorites_on_created_at"
    t.index ["tubuyaki_id"], name: "index_favorites_on_tubuyaki_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "follows", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "inverse_follower_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["follower_id"], name: "index_follows_on_follower_id"
    t.index ["inverse_follower_id"], name: "index_follows_on_inverse_follower_id"
  end

  create_table "tubuyakis", force: :cascade do |t|
    t.integer "user_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
    t.string "file"
    t.string "audio_file"
    t.index ["created_at"], name: "index_tubuyakis_on_created_at"
    t.index ["user_id"], name: "index_tubuyakis_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "screen_name"
    t.string "bio"
    t.string "image"
    t.string "bgimage"
    t.text "instagram"
    t.string "from"
    t.string "tw"
    t.string "fb"
    t.date "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
