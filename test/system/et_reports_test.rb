require "application_system_test_case"

class EtReportsTest < ApplicationSystemTestCase
  setup do
    @et_report = et_reports(:one)
  end

  test "visiting the index" do
    visit et_reports_url
    assert_selector "h1", text: "Et Reports"
  end

  test "creating a Et report" do
    visit et_reports_url
    click_on "New Et Report"

    fill_in "C Sheet Count", with: @et_report.c_sheet_count
    fill_in "Composition Title", with: @et_report.composition_title
    fill_in "Examination Hall", with: @et_report.examination_hall
    fill_in "Examinees Count Man", with: @et_report.examinees_count_man
    fill_in "Examinees Count Woman", with: @et_report.examinees_count_woman
    fill_in "I Contents", with: @et_report.i_contents
    fill_in "I Image", with: @et_report.i_image
    fill_in "I Method Count", with: @et_report.i_method_count
    fill_in "I Method One", with: @et_report.i_method_one
    fill_in "I Other", with: @et_report.i_other
    fill_in "I Time", with: @et_report.i_time
    fill_in "Introduction Number", with: @et_report.introduction_number
    fill_in "Job Category", with: @et_report.job_category
    fill_in "Job Vote Number", with: @et_report.job_vote_number
    fill_in "Judge Count", with: @et_report.judge_count
    fill_in "Office Name", with: @et_report.office_name
    fill_in "Other Coment", with: @et_report.other_coment
    fill_in "Postal Code", with: @et_report.postal_code
    fill_in "Reporting Date", with: @et_report.reporting_date
    fill_in "S Method Appropriate", with: @et_report.s_method_appropriate
    fill_in "S Method Composition", with: @et_report.s_method_composition
    fill_in "S Method Interview", with: @et_report.s_method_interview
    fill_in "S Method Other", with: @et_report.s_method_other
    fill_in "S Method Physical", with: @et_report.s_method_physical
    fill_in "S Method Writing", with: @et_report.s_method_writing
    fill_in "Selection Method", with: @et_report.selection_method
    fill_in "Street Address", with: @et_report.street_address
    fill_in "Student Class", with: @et_report.student_class
    fill_in "Student", with: @et_report.student_id
    fill_in "Student Number", with: @et_report.student_number
    fill_in "T Subject Aptitude", with: @et_report.t_subject_aptitude
    fill_in "T Subject English", with: @et_report.t_subject_english
    fill_in "T Subject General", with: @et_report.t_subject_general
    fill_in "T Subject Japanese", with: @et_report.t_subject_japanese
    fill_in "T Subject Math", with: @et_report.t_subject_math
    fill_in "T Subject Other Name", with: @et_report.t_subject_other_name
    fill_in "T Subject Other Time", with: @et_report.t_subject_other_time
    fill_in "T Subject Science", with: @et_report.t_subject_science
    fill_in "T Subject Society", with: @et_report.t_subject_society
    fill_in "Test Day", with: @et_report.test_day
    fill_in "Writing Test Contents", with: @et_report.writing_test_contents
    click_on "Create Et report"

    assert_text "Et report was successfully created"
    click_on "Back"
  end

  test "updating a Et report" do
    visit et_reports_url
    click_on "Edit", match: :first

    fill_in "C Sheet Count", with: @et_report.c_sheet_count
    fill_in "Composition Title", with: @et_report.composition_title
    fill_in "Examination Hall", with: @et_report.examination_hall
    fill_in "Examinees Count Man", with: @et_report.examinees_count_man
    fill_in "Examinees Count Woman", with: @et_report.examinees_count_woman
    fill_in "I Contents", with: @et_report.i_contents
    fill_in "I Image", with: @et_report.i_image
    fill_in "I Method Count", with: @et_report.i_method_count
    fill_in "I Method One", with: @et_report.i_method_one
    fill_in "I Other", with: @et_report.i_other
    fill_in "I Time", with: @et_report.i_time
    fill_in "Introduction Number", with: @et_report.introduction_number
    fill_in "Job Category", with: @et_report.job_category
    fill_in "Job Vote Number", with: @et_report.job_vote_number
    fill_in "Judge Count", with: @et_report.judge_count
    fill_in "Office Name", with: @et_report.office_name
    fill_in "Other Coment", with: @et_report.other_coment
    fill_in "Postal Code", with: @et_report.postal_code
    fill_in "Reporting Date", with: @et_report.reporting_date
    fill_in "S Method Appropriate", with: @et_report.s_method_appropriate
    fill_in "S Method Composition", with: @et_report.s_method_composition
    fill_in "S Method Interview", with: @et_report.s_method_interview
    fill_in "S Method Other", with: @et_report.s_method_other
    fill_in "S Method Physical", with: @et_report.s_method_physical
    fill_in "S Method Writing", with: @et_report.s_method_writing
    fill_in "Selection Method", with: @et_report.selection_method
    fill_in "Street Address", with: @et_report.street_address
    fill_in "Student Class", with: @et_report.student_class
    fill_in "Student", with: @et_report.student_id
    fill_in "Student Number", with: @et_report.student_number
    fill_in "T Subject Aptitude", with: @et_report.t_subject_aptitude
    fill_in "T Subject English", with: @et_report.t_subject_english
    fill_in "T Subject General", with: @et_report.t_subject_general
    fill_in "T Subject Japanese", with: @et_report.t_subject_japanese
    fill_in "T Subject Math", with: @et_report.t_subject_math
    fill_in "T Subject Other Name", with: @et_report.t_subject_other_name
    fill_in "T Subject Other Time", with: @et_report.t_subject_other_time
    fill_in "T Subject Science", with: @et_report.t_subject_science
    fill_in "T Subject Society", with: @et_report.t_subject_society
    fill_in "Test Day", with: @et_report.test_day
    fill_in "Writing Test Contents", with: @et_report.writing_test_contents
    click_on "Update Et report"

    assert_text "Et report was successfully updated"
    click_on "Back"
  end

  test "destroying a Et report" do
    visit et_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Et report was successfully destroyed"
  end
end
