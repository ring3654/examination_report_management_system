class CreateEtReports < ActiveRecord::Migration[5.2]
  def change
    create_table :et_reports do |t|
      t.datetime :reporting_date
      t.integer :student_class
      t.integer :student_number
      t.integer :student_id
      t.string :job_category
      t.string :office_name
      t.integer :job_vote_number
      t.integer :introduction_number
      t.datetime :test_day
      t.integer :postal_code
      t.string :street_address
      t.string :examination_hall
      t.integer :examinees_count_man
      t.integer :examinees_count_woman
      t.integer :selection_method
      t.boolean :s_method_writing
      t.boolean :s_method_appropriate
      t.boolean :s_method_interview
      t.boolean :s_method_composition
      t.boolean :s_method_physical
      t.boolean :s_method_other
      t.integer :t_subject_japanese
      t.integer :t_subject_math
      t.integer :t_subject_society
      t.integer :t_subject_science
      t.integer :t_subject_english
      t.string :t_subject_other_name
      t.integer :t_subject_other_time
      t.integer :t_subject_general
      t.integer :t_subject_aptitude
      t.integer :i_method_one
      t.integer :i_method_count
      t.integer :judge_count
      t.integer :i_time
      t.string :i_other
      t.text :i_contents
      t.string :i_image
      t.string :composition_title
      t.integer :c_sheet_count
      t.text :writing_test_contents
      t.text :other_coment

      t.timestamps
    end
  end
end
