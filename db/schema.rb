# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20190716111930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clubs", force: :cascade do |t|
    t.integer  "county_id"
    t.text     "level"
    t.text     "county"
    t.text     "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "clubs", ["county_id"], name: "index_clubs_on_county_id", using: :btree

  create_table "counties", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "team_id"
    t.text     "home"
    t.text     "away"
    t.integer  "home_goals"
    t.integer  "home_points"
    t.integer  "away_goals"
    t.integer  "away_points"
    t.text     "pitch"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "matches", ["team_id"], name: "index_matches_on_team_id", using: :btree
  add_index "matches", ["user_id"], name: "index_matches_on_user_id", using: :btree

  create_table "teams", force: :cascade do |t|
    t.integer  "user_id"
    t.text     "level"
    t.text     "county"
    t.text     "club"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "teams", ["user_id"], name: "index_teams_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_name"
    t.string   "email"
    t.string   "encrypted_password"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "provider"
    t.string   "uid"
    t.string   "image"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "clubs", "counties"
  add_foreign_key "matches", "teams"
  add_foreign_key "matches", "users"
  add_foreign_key "teams", "users"
end
