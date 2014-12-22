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

ActiveRecord::Schema.define(version: 20141222184327) do

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "component_ingredients", force: true do |t|
    t.integer  "component_id"
    t.integer  "ingredient_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unit"
    t.decimal  "quantity",      precision: 8, scale: 2
  end

  add_index "component_ingredients", ["component_id"], name: "index_component_ingredients_on_component_id"
  add_index "component_ingredients", ["ingredient_id"], name: "index_component_ingredients_on_ingredient_id"

  create_table "components", force: true do |t|
    t.string   "name"
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "components", ["product_id"], name: "index_components_on_product_id"

  create_table "ingredients", force: true do |t|
    t.string   "name"
    t.decimal  "water",        precision: 8, scale: 2
    t.decimal  "energy_kcal",  precision: 8, scale: 2
    t.decimal  "protein",      precision: 8, scale: 2
    t.decimal  "lipid_total",  precision: 8, scale: 2
    t.decimal  "ash",          precision: 8, scale: 2
    t.decimal  "carbohydrate", precision: 8, scale: 2
    t.decimal  "fiber",        precision: 8, scale: 2
    t.decimal  "sugar_total",  precision: 8, scale: 2
    t.decimal  "calcium",      precision: 8, scale: 2
    t.decimal  "iron",         precision: 8, scale: 2
    t.decimal  "magnesium",    precision: 8, scale: 2
    t.decimal  "phosphorus",   precision: 8, scale: 2
    t.decimal  "potassium",    precision: 8, scale: 2
    t.decimal  "sodium",       precision: 8, scale: 2
    t.decimal  "zinc",         precision: 8, scale: 2
    t.decimal  "copper",       precision: 8, scale: 2
    t.decimal  "manganese",    precision: 8, scale: 2
    t.decimal  "selenium",     precision: 8, scale: 2
    t.decimal  "vitamin_c",    precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.integer  "company_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "products", ["company_id"], name: "index_products_on_company_id"

end
