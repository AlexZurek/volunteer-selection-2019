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

ActiveRecord::Schema.define(version: 2019_10_12_235456) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
  end

  create_table "volunteers", force: :cascade do |t|
    t.integer "project_id"
    t.string "email"
    t.string "phone_number"
    t.string "job_title"
    t.string "employer"
    t.string "linkedin_url"
    t.integer "front_end"
    t.integer "back_end"
    t.integer "databases"
    t.integer "mobile"
    t.integer "dev_ops"
    t.integer "wordpress"
    t.integer "squarespace"
    t.integer "wix"
    t.integer "weebly"
    t.integer "html_css"
    t.integer "javascript"
    t.integer "react"
    t.integer "vue"
    t.integer "angular"
    t.integer "node_js"
    t.integer "laravel"
    t.integer "rails"
    t.integer "django"
    t.integer "asp_net"
    t.integer "java"
    t.integer "postgres"
    t.integer "my_sql"
    t.integer "sql_server"
    t.integer "no_sql"
    t.integer "android"
    t.integer "ios"
    t.integer "xamarin"
    t.integer "ionic"
    t.integer "react_native"
    t.integer "aws"
    t.integer "azure"
    t.integer "heroku"
    t.integer "digital_ocean"
    t.integer "google_cloud_platform"
    t.integer "docker"
    t.integer "version_control"
    t.integer "print_design"
    t.integer "ux"
    t.integer "ui"
    t.integer "illustration"
    t.integer "branding"
    t.integer "motion_graphics"
    t.integer "photoshop"
    t.integer "illustrator"
    t.integer "in_design"
    t.integer "after_effects"
    t.integer "sketch"
    t.integer "figma"
    t.integer "zeplin"
    t.integer "invision"
    t.integer "marvel"
    t.integer "adobe_xd"
    t.integer "project_management"
    t.integer "brand_strategy"
    t.integer "copywriting"
    t.integer "crm_tools"
    t.integer "marketing"
    t.integer "seo"
    t.integer "social_media"
    t.integer "technical_writing"
    t.integer "user_testing"
    t.integer "photography"
    t.integer "videography"
    t.string "first_name"
    t.string "last_name"
    t.string "bio"
  end

end
