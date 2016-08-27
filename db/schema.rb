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

ActiveRecord::Schema.define(version: 20160827035354) do

  create_table "multiple_choices", force: :cascade do |t|
    t.string  "question"
    t.string  "choice1"
    t.string  "choice2"
    t.string  "choice3"
    t.string  "choice4"
    t.string  "answer"
    t.integer "test_id"
    t.integer "study_id"
  end

  create_table "studies", force: :cascade do |t|
    t.string "name"
    t.string "test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string  "name"
    t.integer "user_id"
    t.string  "description"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
