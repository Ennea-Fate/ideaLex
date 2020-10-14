# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_14_103631) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "last_name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "book_eigs", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "ethnoidiogloss_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_eigs_on_book_id"
    t.index ["ethnoidiogloss_id"], name: "index_book_eigs_on_ethnoidiogloss_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.text "text"
    t.bigint "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "ethnoidiogloss_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ethnoidiogloss_id"], name: "index_comments_on_ethnoidiogloss_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "concordance_books", force: :cascade do |t|
    t.bigint "concordance_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_concordance_books_on_book_id"
    t.index ["concordance_id"], name: "index_concordance_books_on_concordance_id"
  end

  create_table "concordances", force: :cascade do |t|
    t.text "concordance"
    t.boolean "is_it_lemma"
    t.integer "width"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "word"
  end

  create_table "eig_status_votes", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "ethnoidiogloss_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["ethnoidiogloss_id"], name: "index_eig_status_votes_on_ethnoidiogloss_id"
    t.index ["user_id"], name: "index_eig_status_votes_on_user_id"
  end

  create_table "ethnoidioglosses", force: :cascade do |t|
    t.string "word"
    t.text "description"
    t.integer "status"
    t.bigint "author_id", null: false
    t.bigint "user_id", null: false
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_ethnoidioglosses_on_author_id"
    t.index ["book_id"], name: "index_ethnoidioglosses_on_book_id"
    t.index ["user_id"], name: "index_ethnoidioglosses_on_user_id"
  end

  create_table "frequency_vocabularies", force: :cascade do |t|
    t.text "text"
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_frequency_vocabularies_on_book_id"
  end

  create_table "grammar_dictionaries", force: :cascade do |t|
    t.text "dictionary"
    t.bigint "book_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_grammar_dictionaries_on_book_id"
  end

  create_table "notebooks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_notebooks_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "rights_mask"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "second_name"
    t.string "last_name"
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "book_eigs", "books"
  add_foreign_key "book_eigs", "ethnoidioglosses"
  add_foreign_key "books", "authors"
  add_foreign_key "comments", "ethnoidioglosses"
  add_foreign_key "comments", "users"
  add_foreign_key "concordance_books", "books"
  add_foreign_key "concordance_books", "concordances"
  add_foreign_key "eig_status_votes", "ethnoidioglosses"
  add_foreign_key "eig_status_votes", "users"
  add_foreign_key "ethnoidioglosses", "authors"
  add_foreign_key "ethnoidioglosses", "books"
  add_foreign_key "ethnoidioglosses", "users"
  add_foreign_key "frequency_vocabularies", "books"
  add_foreign_key "grammar_dictionaries", "books"
  add_foreign_key "notebooks", "users"
  add_foreign_key "users", "roles"
end
