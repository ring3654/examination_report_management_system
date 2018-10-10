require "application_system_test_case"

class EeReportsTest < ApplicationSystemTestCase
  setup do
    @ee_report = ee_reports(:one)
  end

  test "visiting the index" do
    visit ee_reports_url
    assert_selector "h1", text: "Ee Reports"
  end

  test "creating a Ee report" do
    visit ee_reports_url
    click_on "New Ee Report"

    fill_in "E Contents", with: @ee_report.e_contents
    fill_in "Entrance Form", with: @ee_report.entrance_form
    fill_in "Examination Hall", with: @ee_report.examination_hall
    fill_in "G Impressions", with: @ee_report.g_impressions
    fill_in "G Q Contents", with: @ee_report.g_q_contents
    fill_in "G Q Image", with: @ee_report.g_q_image
    fill_in "I Q Contents", with: @ee_report.i_q_contents
    fill_in "I Q Images", with: @ee_report.i_q_images
    fill_in "Postal Code", with: @ee_report.postal_code
    fill_in "R Ao", with: @ee_report.r_ao
    fill_in "R Designation", with: @ee_report.r_designation
    fill_in "R General", with: @ee_report.r_general
    fill_in "R Impression", with: @ee_report.r_impression
    fill_in "R Others", with: @ee_report.r_others
    fill_in "R Self", with: @ee_report.r_self
    fill_in "R Special", with: @ee_report.r_special
    fill_in "R Sports", with: @ee_report.r_sports
    fill_in "Recommended Form", with: @ee_report.recommended_form
    fill_in "Reporting Date", with: @ee_report.reporting_date
    fill_in "Result Publication Date", with: @ee_report.result_publication_date
    fill_in "S Course Name", with: @ee_report.s_course_name
    fill_in "S Department Name", with: @ee_report.s_department_name
    fill_in "S Faculty Name", with: @ee_report.s_faculty_name
    fill_in "School Name", with: @ee_report.school_name
    fill_in "Street Address", with: @ee_report.street_address
    fill_in "Student Class", with: @ee_report.student_class
    fill_in "Student", with: @ee_report.student_id
    fill_in "Student Number", with: @ee_report.student_number
    fill_in "T Subject English", with: @ee_report.t_subject_english
    fill_in "T Subject Japanese", with: @ee_report.t_subject_japanese
    fill_in "T Subject Math", with: @ee_report.t_subject_math
    fill_in "T Subject Other", with: @ee_report.t_subject_other
    fill_in "T Subject Other Time", with: @ee_report.t_subject_other_time
    fill_in "T Subject Science", with: @ee_report.t_subject_science
    fill_in "T Subject Society", with: @ee_report.t_subject_society
    fill_in "Test Day", with: @ee_report.test_day
    fill_in "W Contents", with: @ee_report.w_contents
    click_on "Create Ee report"

    assert_text "Ee report was successfully created"
    click_on "Back"
  end

  test "updating a Ee report" do
    visit ee_reports_url
    click_on "Edit", match: :first

    fill_in "E Contents", with: @ee_report.e_contents
    fill_in "Entrance Form", with: @ee_report.entrance_form
    fill_in "Examination Hall", with: @ee_report.examination_hall
    fill_in "G Impressions", with: @ee_report.g_impressions
    fill_in "G Q Contents", with: @ee_report.g_q_contents
    fill_in "G Q Image", with: @ee_report.g_q_image
    fill_in "I Q Contents", with: @ee_report.i_q_contents
    fill_in "I Q Images", with: @ee_report.i_q_images
    fill_in "Postal Code", with: @ee_report.postal_code
    fill_in "R Ao", with: @ee_report.r_ao
    fill_in "R Designation", with: @ee_report.r_designation
    fill_in "R General", with: @ee_report.r_general
    fill_in "R Impression", with: @ee_report.r_impression
    fill_in "R Others", with: @ee_report.r_others
    fill_in "R Self", with: @ee_report.r_self
    fill_in "R Special", with: @ee_report.r_special
    fill_in "R Sports", with: @ee_report.r_sports
    fill_in "Recommended Form", with: @ee_report.recommended_form
    fill_in "Reporting Date", with: @ee_report.reporting_date
    fill_in "Result Publication Date", with: @ee_report.result_publication_date
    fill_in "S Course Name", with: @ee_report.s_course_name
    fill_in "S Department Name", with: @ee_report.s_department_name
    fill_in "S Faculty Name", with: @ee_report.s_faculty_name
    fill_in "School Name", with: @ee_report.school_name
    fill_in "Street Address", with: @ee_report.street_address
    fill_in "Student Class", with: @ee_report.student_class
    fill_in "Student", with: @ee_report.student_id
    fill_in "Student Number", with: @ee_report.student_number
    fill_in "T Subject English", with: @ee_report.t_subject_english
    fill_in "T Subject Japanese", with: @ee_report.t_subject_japanese
    fill_in "T Subject Math", with: @ee_report.t_subject_math
    fill_in "T Subject Other", with: @ee_report.t_subject_other
    fill_in "T Subject Other Time", with: @ee_report.t_subject_other_time
    fill_in "T Subject Science", with: @ee_report.t_subject_science
    fill_in "T Subject Society", with: @ee_report.t_subject_society
    fill_in "Test Day", with: @ee_report.test_day
    fill_in "W Contents", with: @ee_report.w_contents
    click_on "Update Ee report"

    assert_text "Ee report was successfully updated"
    click_on "Back"
  end

  test "destroying a Ee report" do
    visit ee_reports_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ee report was successfully destroyed"
  end
end
