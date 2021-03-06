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

ActiveRecord::Schema.define(version: 20150203055004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "account_holders", force: :cascade do |t|
    t.string "first_name", limit: 20
    t.string "last_name",  limit: 30
    t.string "email",      limit: 100
    t.string "password"
  end

  create_table "accounts", force: :cascade do |t|
    t.integer "account_holder_id"
    t.string  "account_type"
  end

  create_table "transaction_types", force: :cascade do |t|
    t.string "transaction_type", limit: 25
  end

  create_table "transactions", force: :cascade do |t|
    t.integer  "account_id"
    t.integer  "amount_in_cents"
    t.integer  "transaction_type_id"
    t.datetime "occurred_at"
  end

end
