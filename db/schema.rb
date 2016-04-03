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

ActiveRecord::Schema.define(version: 20160402031517) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "amps_configurations", force: :cascade do |t|
    t.string  "AMPS_config",            null: false
    t.integer "basic_configuration_id", null: false
  end

  add_index "amps_configurations", ["basic_configuration_id"], name: "index_amps_configurations_on_basic_configuration_id", using: :btree

  create_table "basic_configurations", force: :cascade do |t|
    t.string  "site_name",                                  null: false
    t.string  "status",                                     null: false
    t.string  "site_url",                                   null: false
    t.integer "variation",                                  null: false
    t.string  "default_behavior",                           null: false
    t.boolean "enable_detect_variation",    default: false, null: false
    t.boolean "enable_AMPS",                default: false, null: false
    t.boolean "enable_origin_experiements", default: false, null: false
  end

  create_table "origin_experiments", force: :cascade do |t|
    t.string  "campaign_delimiter",     null: false
    t.string  "factor_delimiter",       null: false
    t.integer "basic_configuration_id", null: false
  end

  add_index "origin_experiments", ["basic_configuration_id"], name: "index_origin_experiments_on_basic_configuration_id", using: :btree

end
