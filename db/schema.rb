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

ActiveRecord::Schema.define(version: 20170209215027) do

  create_table "parlementaires", force: :cascade do |t|
    t.string   "type"
    t.string   "twitter"
    t.string   "nom"
    t.string   "nom_de_famille"
    t.string   "prenom"
    t.string   "sexe"
    t.string   "groupe_sigle"
    t.string   "nom_circo"
    t.string   "num_circo"
    t.string   "num_deptmt"
    t.integer  "twitter_tweets"
    t.integer  "twitter_followers"
    t.integer  "twitter_following"
    t.integer  "twitter_listed"
    t.integer  "twitter_favourites"
    t.boolean  "twitter_verified"
    t.boolean  "twitter_protected"
    t.string   "twitter_id"
    t.string   "twitter_name"
    t.string   "twitter_description"
    t.datetime "twitter_created_at"
    t.string   "sites_web"
    t.string   "url_institution"
    t.string   "slug"
    t.string   "url_api"
    t.string   "profile_image_url"
    t.string   "profile_image_url_https"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

end
