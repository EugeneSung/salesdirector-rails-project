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

ActiveRecord::Schema.define(version: 2018_06_18_202647) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "customer_number"
    t.string "address"
    t.string "phone_number"
    t.integer "salesman_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.integer "invoice_number"
    t.integer "salesman_id"
    t.integer "customer_id"
    t.integer "salesorder_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total"
  end

  create_table "product_invoices", force: :cascade do |t|
    t.integer "product_id"
    t.integer "invoice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "product_salesorders", force: :cascade do |t|
    t.integer "product_id"
    t.integer "salesorder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.integer "inventory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salesmen", force: :cascade do |t|
    t.string "title"
    t.string "phone_number"
    t.string "status"
    t.string "hired_date"
    t.integer "emp_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "password"
    t.string "password_digest"
  end

  create_table "salesorders", force: :cascade do |t|
    t.integer "order_number"
    t.integer "salesman_id"
    t.integer "customer_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total"
  end

end