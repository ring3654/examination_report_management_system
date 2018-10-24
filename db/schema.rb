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

ActiveRecord::Schema.define(version: 2018_10_23_010852) do

  create_table "ee_reports", force: :cascade do |t|
    t.datetime "reporting_date"
    t.integer "student_class"
    t.integer "student_number"
    t.integer "student_id"
    t.string "school_name"
    t.string "s_faculty_name"
    t.string "s_department_name"
    t.string "s_course_name"
    t.datetime "test_day"
    t.integer "postal_code"
    t.string "street_address"
    t.string "examination_hall"
    t.date "result_publication_date"
    t.integer "entrance_form"
    t.boolean "r_special"
    t.boolean "r_designation"
    t.boolean "r_ao"
    t.boolean "r_general"
    t.boolean "r_sports"
    t.boolean "r_self"
    t.boolean "r_others"
    t.integer "t_subject_japanese"
    t.integer "t_subject_math"
    t.integer "t_subject_society"
    t.integer "t_subject_science"
    t.integer "t_subject_english"
    t.string "t_subject_other"
    t.integer "t_subject_other_time"
    t.text "g_q_contents"
    t.string "g_q_image"
    t.text "g_impressions"
    t.integer "recommended_form"
    t.text "i_q_contents"
    t.string "i_q_images"
    t.text "e_contents"
    t.text "w_contents"
    t.text "r_impression"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "approval_flg"
    t.integer "recommended_group"
  end

  create_table "et_reports", force: :cascade do |t|
    t.datetime "reporting_date"
    t.integer "student_class"
    t.integer "student_number"
    t.integer "student_id"
    t.string "job_category"
    t.string "office_name"
    t.integer "job_vote_number"
    t.integer "introduction_number"
    t.datetime "test_day"
    t.integer "postal_code"
    t.string "street_address"
    t.string "examination_hall"
    t.integer "examinees_count_man"
    t.integer "examinees_count_woman"
    t.integer "selection_method"
    t.boolean "s_method_writing"
    t.boolean "s_method_appropriate"
    t.boolean "s_method_interview"
    t.boolean "s_method_composition"
    t.boolean "s_method_physical"
    t.boolean "s_method_other"
    t.integer "t_subject_japanese"
    t.integer "t_subject_math"
    t.integer "t_subject_society"
    t.integer "t_subject_science"
    t.integer "t_subject_english"
    t.string "t_subject_other_name"
    t.integer "t_subject_other_time"
    t.integer "t_subject_general"
    t.integer "t_subject_aptitude"
    t.integer "i_method_one"
    t.integer "i_method_count"
    t.integer "judge_count"
    t.integer "i_time"
    t.string "i_other"
    t.text "i_contents"
    t.string "i_image"
    t.string "composition_title"
    t.integer "c_sheet_count"
    t.text "writing_test_contents"
    t.text "other_coment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "approval_flg"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_id"
    t.string "name"
    t.string "pass"
    t.integer "flg"
    t.integer "annual"
    t.integer "authority"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
