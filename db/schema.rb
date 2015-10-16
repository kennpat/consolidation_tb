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

ActiveRecord::Schema.define(version: 20151016181933) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "corporations", force: :cascade do |t|
    t.string  "corporation_name", null: false
    t.integer "parent_id"
  end

  add_index "corporations", ["corporation_name"], name: "index_corporations_on_corporation_name", using: :btree

  create_table "corporations_trial_balances", id: false, force: :cascade do |t|
    t.integer "corporation_id",   null: false
    t.integer "trial_balance_id", null: false
  end

  create_table "trial_balances", force: :cascade do |t|
    t.string   "period",                                                 null: false
    t.integer  "year",                                                   null: false
    t.integer  "cash",                                       default: 0, null: false
    t.integer  "investments",                                default: 0, null: false
    t.integer  "accounts_receivable",                        default: 0, null: false
    t.integer  "inventory",                                  default: 0, null: false
    t.integer  "prepaid_expenses",                           default: 0, null: false
    t.integer  "capital_assets",                             default: 0, null: false
    t.integer  "accumulated_depreciation",                   default: 0, null: false
    t.integer  "intangible_assets",                          default: 0, null: false
    t.integer  "accumulated_amortization",                   default: 0, null: false
    t.integer  "other_assets",                               default: 0, null: false
    t.integer  "accounts_payable",                           default: 0, null: false
    t.integer  "accrued_expenses",                           default: 0, null: false
    t.integer  "long_term_liabilities",                      default: 0, null: false
    t.integer  "other_liabilities",                          default: 0, null: false
    t.integer  "retained_earnings",                          default: 0, null: false
    t.integer  "capital_stock",                              default: 0, null: false
    t.integer  "revenue",                                    default: 0, null: false
    t.integer  "cost_of_goods_sold",                         default: 0, null: false
    t.integer  "selling_general_and_administrative_expense", default: 0, null: false
    t.integer  "other_income",                               default: 0, null: false
    t.integer  "other_expense",                              default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
