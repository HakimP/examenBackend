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

ActiveRecord::Schema.define(version: 20160818004844) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.integer  "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "alumnos", ["curso_id"], name: "index_alumnos_on_curso_id", using: :btree

  create_table "animal_types", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "animal_type_id"
  end

  add_index "animals", ["animal_type_id"], name: "index_animals_on_animal_type_id", using: :btree

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "coments", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "post_id"
  end

  add_index "coments", ["post_id"], name: "index_coments_on_post_id", using: :btree

  create_table "cursos", force: :cascade do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.float    "precio"
    t.integer  "salon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "cursos", ["salon_id"], name: "index_cursos_on_salon_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "stock"
    t.integer  "category_id"
    t.boolean  "recommended"
  end

  add_index "movies", ["category_id"], name: "index_movies_on_category_id", using: :btree

  create_table "posts", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salons", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "test", id: false, force: :cascade do |t|
    t.string "name", limit: 29
  end

  add_foreign_key "alumnos", "cursos"
  add_foreign_key "animals", "animal_types"
  add_foreign_key "coments", "posts"
  add_foreign_key "cursos", "salons"
  add_foreign_key "movies", "categories"
end
