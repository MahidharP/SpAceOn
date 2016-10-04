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

ActiveRecord::Schema.define(version: 20160921062703) do

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "localities", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "profiles", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "dob"
    t.string   "gender"
    t.integer  "mobile"
    t.string   "pro_pic"
    t.string   "id_proof"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "profession_id"
  end

  create_table "prop_reviews", force: true do |t|
    t.integer  "user_id"
    t.text     "rev_desc"
    t.integer  "properity_id"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properities", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "address"
    t.integer  "locality_id"
    t.integer  "city_id"
    t.string   "properity_type"
    t.integer  "area",           limit: 255
    t.integer  "price",          limit: 255
    t.integer  "advance_amount", limit: 255
    t.text     "description"
    t.string   "availability"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
  end

  create_table "propreviews", force: true do |t|
    t.integer  "user_id"
    t.text     "rev_desc"
    t.integer  "properity_id"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", force: true do |t|
    t.string   "min_area"
    t.string   "max_area"
    t.integer  "locality_id"
    t.integer  "city_id"
    t.string   "min_price"
    t.string   "max_price"
    t.string   "availabiity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_owners", force: true do |t|
    t.integer  "user_id"
    t.integer  "owner_id"
    t.text     "review"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "review_tenants", force: true do |t|
    t.integer  "user_id"
    t.integer  "tenant_id"
    t.text     "review"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: true do |t|
    t.integer  "rating"
    t.text     "review"
    t.integer  "properity_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reviewee"
    t.integer  "reviewer"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",     null: false
    t.string   "encrypted_password",     default: "",     null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "role",                   default: "user"
    t.integer  "user_rating"
    t.text     "user_review"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "votes", force: true do |t|
    t.integer  "votable_id"
    t.string   "votable_type"
    t.integer  "voter_id"
    t.string   "voter_type"
    t.boolean  "vote_flag"
    t.string   "vote_scope"
    t.integer  "vote_weight"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "votes", ["votable_id", "votable_type", "vote_scope"], name: "index_votes_on_votable_id_and_votable_type_and_vote_scope"
  add_index "votes", ["voter_id", "voter_type", "vote_scope"], name: "index_votes_on_voter_id_and_voter_type_and_vote_scope"

end
