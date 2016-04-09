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

ActiveRecord::Schema.define(version: 20160229001138) do

  create_table "user_preferences", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "phone_number"
    t.string   "cell_carrier"
    t.string   "gender"
    t.string   "ethnicity"
    t.integer  "age_min"
    t.integer  "age_max"
    t.string   "paid_only"
    t.string   "union"
    t.string   "background_roles"
    t.string   "nudity_roles"
    t.string   "theater_musical"
    t.string   "theater_plays"
    t.string   "theater_chorus"
    t.string   "film_feature"
    t.string   "film_short"
    t.string   "film_student"
    t.string   "tv_scripted"
    t.string   "tv_reality"
    t.string   "demo_instructional"
    t.string   "commercial_national"
    t.string   "commercial_local"
    t.string   "commercial_online"
    t.string   "modeling_print"
    t.string   "modeling_fashion"
    t.string   "modeling_promotional"
    t.string   "events_agents"
    t.string   "events_festivals"
    t.string   "events_groups"
    t.string   "perf_comedy"
    t.string   "perf_dancer"
    t.string   "perf_music"
    t.string   "nonperf_stage"
    t.string   "nonperf_crew"
    t.string   "nonperf_writer"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
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

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
