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

ActiveRecord::Schema.define(version: 20171116125603) do

  create_table "flags", force: :cascade do |t|
    t.integer "user_id"
    t.integer "spot_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_flags_on_spot_id"
    t.index ["user_id"], name: "index_flags_on_user_id"
  end

  create_table "regions", force: :cascade do |t|
    t.integer "region_id", default: 0
    t.string "name", default: ""
    t.float "lat", default: 0.0
    t.float "lng", default: 0.0
    t.string "geohash", default: ""
    t.integer "radius", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spots", force: :cascade do |t|
    t.integer "region_id"
    t.integer "spot_id", default: 0
    t.string "name", default: ""
    t.boolean "indoor", default: false
    t.float "lat", default: 0.0
    t.float "lng", default: 0.0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["region_id"], name: "index_spots_on_region_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer "kakao_id", default: 0
    t.string "nickname", default: ""
    t.string "email", default: ""
    t.string "profile_image_url", default: ""
    t.string "thumbnail_image_url", default: ""
    t.boolean "active", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
