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

ActiveRecord::Schema.define(version: 20191203014740) do

  create_table "celestial_bodies", force: :cascade do |t|
    t.string "type"
    t.float "volume"
    t.float "mass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "events" because of following StandardError
#   Unknown type 'has_many' for column 'people'

  create_table "great_celestial_relationships", force: :cascade do |t|
    t.string "supercluster"
    t.string "cluster"
    t.string "galaxy"
    t.string "arm"
    t.float "distance_from_end_star_log"
    t.float "distance_from_glactic_core_log"
    t.float "angle_north_south_rad"
    t.float "angle_east_west"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

# Could not dump table "people" because of following StandardError
#   Unknown type 'has_many' for column 'event'

  create_table "relative_time_spaces", force: :cascade do |t|
    t.string "epoch"
    t.bigint "epochtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "physicality"
  end

  create_table "things", force: :cascade do |t|
    t.string "what_is_it"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
