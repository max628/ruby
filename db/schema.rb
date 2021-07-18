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

ActiveRecord::Schema.define(version: 2018_10_10_022914) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "website"
    t.string "address"
    t.string "size"
    t.string "founded_in"
    t.text "synopsis"
    t.string "revenue"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_companies_on_user_id"
  end

  create_table "houses", force: :cascade do |t|
    t.string "sqft"
    t.string "location"
    t.string "address"
    t.string "style"
    t.string "floors"
    t.string "price"
    t.string "basement"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["company_id"], name: "index_houses_on_company_id"
    t.index ["user_id"], name: "index_houses_on_user_id"
  end

  create_table "inquirydetails", force: :cascade do |t|
    t.text "content"
    t.text "subject"
    t.integer "user_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_inquirydetails_on_house_id"
    t.index ["user_id"], name: "index_inquirydetails_on_user_id"
  end

  create_table "inquiryreplies", force: :cascade do |t|
    t.text "reply"
    t.integer "user_id"
    t.integer "inquirydetail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "house_id"
    t.index ["house_id"], name: "index_inquiryreplies_on_house_id"
    t.index ["inquirydetail_id"], name: "index_inquiryreplies_on_inquirydetail_id"
    t.index ["user_id"], name: "index_inquiryreplies_on_user_id"
  end

  create_table "potentialbuyers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "house_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["house_id"], name: "index_potentialbuyers_on_house_id"
    t.index ["user_id"], name: "index_potentialbuyers_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.integer "company_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "role"
    t.string "name"
    t.string "contactinfo"
    t.string "preferredcontact"
    t.index ["company_id"], name: "index_users_on_company_id"
    t.index ["email", "role"], name: "index_users_on_email_and_role", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
