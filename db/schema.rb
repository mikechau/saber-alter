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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130704141031) do

  create_table "algos", :force => true do |t|
    t.string   "name"
    t.decimal  "y_intercept", :precision => 8, :scale => 2
    t.integer  "a"
    t.integer  "b"
    t.integer  "c"
    t.integer  "d"
    t.integer  "e"
    t.integer  "f"
    t.integer  "g"
    t.integer  "h"
    t.decimal  "i",           :precision => 8, :scale => 2
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "trucks", :force => true do |t|
    t.string   "name"
    t.integer  "model_year"
    t.string   "m"
    t.string   "m2"
    t.decimal  "a",          :precision => 8, :scale => 2
    t.boolean  "b"
    t.boolean  "c"
    t.boolean  "d"
    t.boolean  "e"
    t.boolean  "f"
    t.boolean  "g"
    t.boolean  "h"
    t.decimal  "i",          :precision => 8, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "values", :force => true do |t|
    t.integer  "truck_id"
    t.datetime "ts"
    t.decimal  "estimate",   :precision => 8, :scale => 2
    t.decimal  "actual",     :precision => 8, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

end
