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

ActiveRecord::Schema.define(version: 20150407170129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", force: :cascade do |t|
    t.string   "name"
    t.integer  "espn"
    t.integer  "scout"
    t.integer  "rivals"
    t.string   "committed_to"
    t.string   "st"
    t.integer  "stat_year"
    t.string   "hsclass"
    t.integer  "height"
    t.float    "seva_score"
    t.integer  "win"
    t.float    "ppg"
    t.float    "apg"
    t.float    "rpg"
    t.float    "bpg"
    t.float    "spg"
    t.integer  "fg"
    t.string   "high_school"
    t.string   "risk_score"
    t.float    "position"
    t.string   "style"
    t.string   "past_similar_one"
    t.string   "past_similar_two"
    t.string   "past_similar_three"
    t.string   "current_similar_one"
    t.string   "current_similar_two"
    t.string   "current_similar_three"
    t.float    "barwin"
    t.float    "barppg"
    t.float    "barfg"
    t.float    "barapg"
    t.float    "barrpg"
    t.float    "barbpg"
    t.float    "barspg"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.float    "seva_score_c"
    t.float    "ppgc"
    t.float    "apgc"
    t.float    "rpgc"
    t.float    "bpgc"
    t.float    "spgc"
    t.integer  "fgpc"
    t.float    "seva_score_f"
    t.float    "ppgf"
    t.float    "apgf"
    t.float    "rpgf"
    t.float    "bpgf"
    t.float    "spgf"
    t.integer  "fgpf"
    t.float    "seva_score_s"
    t.float    "ppgs"
    t.float    "apgs"
    t.float    "rpgs"
    t.float    "bpgs"
    t.float    "spgs"
    t.integer  "fgps"
    t.float    "seva_score_j"
    t.float    "ppgj"
    t.float    "apgj"
    t.float    "rpgj"
    t.float    "bpgj"
    t.float    "spgj"
    t.integer  "fgpj"
    t.float    "seva_score_sr"
    t.float    "ppgsr"
    t.float    "apgsr"
    t.float    "rpgsr"
    t.float    "bpgsr"
    t.float    "spgsr"
    t.integer  "fgpsr"
    t.string   "video_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
