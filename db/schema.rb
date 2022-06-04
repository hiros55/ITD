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

ActiveRecord::Schema.define(version: 2022_06_04_122615) do

  create_table "achivements", charset: "utf8mb4", force: :cascade do |t|
    t.date "startdate"
    t.date "enddate"
    t.string "name"
    t.string "achitype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "adminusers", charset: "utf8mb4", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_adminusers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_adminusers_on_reset_password_token", unique: true
  end

  create_table "articles", charset: "utf8mb4", force: :cascade do |t|
    t.string "title"
    t.string "text"
    t.bigint "tags_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tags_id"], name: "index_articles_on_tags_id"
  end

  create_table "tags", charset: "utf8mb4", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "birthplace"
    t.string "purpose"
    t.string "paper"
    t.string "carrier_jun"
    t.string "carrier_high"
    t.string "carrier_univ"
    t.string "carrier_univ_mas"
    t.string "carrier_work"
    t.string "experience"
    t.date "birthday"
    t.string "insta"
    t.string "twitter"
    t.string "skill"
    t.bigint "articles_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "avatar"
    t.index ["articles_id"], name: "index_users_on_articles_id"
  end

end
