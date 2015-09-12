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

ActiveRecord::Schema.define(version: 20150911190754) do

  create_table "chat_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "codis", force: :cascade do |t|
    t.string   "realname",               default: "", null: false
    t.string   "nickname",               default: "", null: false
    t.string   "phonenumber"
    t.integer  "hospital_id",                         null: false
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "codis", ["email"], name: "index_codis_on_email", unique: true
  add_index "codis", ["hospital_id"], name: "index_codis_on_hospital_id"
  add_index "codis", ["nickname"], name: "index_codis_on_nickname"
  add_index "codis", ["phonenumber"], name: "index_codis_on_phonenumber"
  add_index "codis", ["realname"], name: "index_codis_on_realname"
  add_index "codis", ["reset_password_token"], name: "index_codis_on_reset_password_token", unique: true

  create_table "counsels", force: :cascade do |t|
    t.integer  "codi_id"
    t.string   "status"
    t.text     "content"
    t.integer  "chat_room_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "hos_replies", force: :cascade do |t|
    t.string   "user_id"
    t.string   "content"
    t.string   "hospital_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "hospitals", force: :cascade do |t|
    t.string   "hos_name"
    t.string   "hos_address"
    t.text     "hos_intro"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "sex",                    default: "", null: false
    t.integer  "age"
    t.string   "realname",               default: "", null: false
    t.string   "nickname",               default: "", null: false
    t.string   "phonenumber"
    t.string   "interested_operation"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["age"], name: "index_users_on_age"
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["interested_operation"], name: "index_users_on_interested_operation"
  add_index "users", ["nickname"], name: "index_users_on_nickname"
  add_index "users", ["phonenumber"], name: "index_users_on_phonenumber"
  add_index "users", ["realname"], name: "index_users_on_realname"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["sex"], name: "index_users_on_sex"

end
