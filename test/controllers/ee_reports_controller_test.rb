require 'test_helper'

class EeReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ee_report = ee_reports(:one)
  end

  test "should get index" do
    get ee_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_ee_report_url
    assert_response :success
  end

  test "should create ee_report" do
    assert_difference('EeReport.count') do
      post ee_reports_url, params: { ee_report: { e_contents: @ee_report.e_contents, entrance_form: @ee_report.entrance_form, examination_hall: @ee_report.examination_hall, g_impressions: @ee_report.g_impressions, g_q_contents: @ee_report.g_q_contents, g_q_image: @ee_report.g_q_image, i_q_contents: @ee_report.i_q_contents, i_q_images: @ee_report.i_q_images, postal_code: @ee_report.postal_code, r_ao: @ee_report.r_ao, r_designation: @ee_report.r_designation, r_general: @ee_report.r_general, r_impression: @ee_report.r_impression, r_others: @ee_report.r_others, r_self: @ee_report.r_self, r_special: @ee_report.r_special, r_sports: @ee_report.r_sports, recommended_form: @ee_report.recommended_form, reporting_date: @ee_report.reporting_date, result_publication_date: @ee_report.result_publication_date, s_course_name: @ee_report.s_course_name, s_department_name: @ee_report.s_department_name, s_faculty_name: @ee_report.s_faculty_name, school_name: @ee_report.school_name, street_address: @ee_report.street_address, student_class: @ee_report.student_class, student_id: @ee_report.student_id, student_number: @ee_report.student_number, t_subject_english: @ee_report.t_subject_english, t_subject_japanese: @ee_report.t_subject_japanese, t_subject_math: @ee_report.t_subject_math, t_subject_other: @ee_report.t_subject_other, t_subject_other_time: @ee_report.t_subject_other_time, t_subject_science: @ee_report.t_subject_science, t_subject_society: @ee_report.t_subject_society, test_day: @ee_report.test_day, w_contents: @ee_report.w_contents } }
    end

    assert_redirected_to ee_report_url(EeReport.last)
  end

  test "should show ee_report" do
    get ee_report_url(@ee_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_ee_report_url(@ee_report)
    assert_response :success
  end

  test "should update ee_report" do
    patch ee_report_url(@ee_report), params: { ee_report: { e_contents: @ee_report.e_contents, entrance_form: @ee_report.entrance_form, examination_hall: @ee_report.examination_hall, g_impressions: @ee_report.g_impressions, g_q_contents: @ee_report.g_q_contents, g_q_image: @ee_report.g_q_image, i_q_contents: @ee_report.i_q_contents, i_q_images: @ee_report.i_q_images, postal_code: @ee_report.postal_code, r_ao: @ee_report.r_ao, r_designation: @ee_report.r_designation, r_general: @ee_report.r_general, r_impression: @ee_report.r_impression, r_others: @ee_report.r_others, r_self: @ee_report.r_self, r_special: @ee_report.r_special, r_sports: @ee_report.r_sports, recommended_form: @ee_report.recommended_form, reporting_date: @ee_report.reporting_date, result_publication_date: @ee_report.result_publication_date, s_course_name: @ee_report.s_course_name, s_department_name: @ee_report.s_department_name, s_faculty_name: @ee_report.s_faculty_name, school_name: @ee_report.school_name, street_address: @ee_report.street_address, student_class: @ee_report.student_class, student_id: @ee_report.student_id, student_number: @ee_report.student_number, t_subject_english: @ee_report.t_subject_english, t_subject_japanese: @ee_report.t_subject_japanese, t_subject_math: @ee_report.t_subject_math, t_subject_other: @ee_report.t_subject_other, t_subject_other_time: @ee_report.t_subject_other_time, t_subject_science: @ee_report.t_subject_science, t_subject_society: @ee_report.t_subject_society, test_day: @ee_report.test_day, w_contents: @ee_report.w_contents } }
    assert_redirected_to ee_report_url(@ee_report)
  end

  test "should destroy ee_report" do
    assert_difference('EeReport.count', -1) do
      delete ee_report_url(@ee_report)
    end

    assert_redirected_to ee_reports_url
  end
end
