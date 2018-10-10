class CreateEeReports < ActiveRecord::Migration[5.2]
  def change
    create_table :ee_reports do |t|
      t.datetime :reporting_date
      t.integer :student_class
      t.integer :student_number
      t.integer :student_id
      t.string :school_name
      t.string :s_faculty_name
      t.string :s_department_name
      t.string :s_course_name
      t.datetime :test_day
      t.integer :postal_code
      t.string :street_address
      t.string :examination_hall
      t.date :result_publication_date
      t.integer :entrance_form
      t.boolean :r_special
      t.boolean :r_designation
      t.boolean :r_ao
      t.boolean :r_general
      t.boolean :r_sports
      t.boolean :r_self
      t.boolean :r_others
      t.integer :t_subject_japanese
      t.integer :t_subject_math
      t.integer :t_subject_society
      t.integer :t_subject_science
      t.integer :t_subject_english
      t.string :t_subject_other
      t.integer :t_subject_other_time
      t.text :g_q_contents
      t.string :g_q_image
      t.text :g_impressions
      t.integer :recommended_form
      t.text :i_q_contents
      t.string :i_q_images
      t.text :e_contents
      t.text :w_contents
      t.text :r_impression

      t.timestamps
    end
  end
end
