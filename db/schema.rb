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

ActiveRecord::Schema.define(version: 20170518195713) do

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id_id"
    t.integer  "property_id_id"
    t.text     "message"
    t.date     "fecha"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["property_id_id"], name: "index_comments_on_property_id_id"
    t.index ["user_id_id"], name: "index_comments_on_user_id_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer  "property_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["property_id"], name: "index_pictures_on_property_id"
  end

  create_table "properties", force: :cascade do |t|
    t.string   "title"
    t.decimal  "cost"
    t.string   "delegacion"
    t.string   "colonia"
    t.string   "street"
    t.integer  "interior"
    t.integer  "exterior"
    t.integer  "zipcode"
    t.string   "tipo"
    t.integer  "roomie"
    t.integer  "room"
    t.string   "pet"
    t.string   "parking"
    t.string   "service"
    t.string   "internet"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.boolean  "gender"
    t.boolean  "type"
    t.string   "telephone"
    t.boolean  "user_type"
    t.string   "genero"
    t.string   "tipo_de_usuario"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
