require 'test_helper'

class EtReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @et_report = et_reports(:one)
  end

  test "should get index" do
    get et_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_et_report_url
    assert_response :success
  end

  test "should create et_report" do
    assert_difference('EtReport.count') do
      post et_reports_url, params: { et_report: { c_sheet_count: @et_report.c_sheet_count, composition_title: @et_report.composition_title, examination_hall: @et_report.examination_hall, examinees_count_man: @et_report.examinees_count_man, examinees_count_woman: @et_report.examinees_count_woman, i_contents: @et_report.i_contents, i_image: @et_report.i_image, i_method_count: @et_report.i_method_count, i_method_one: @et_report.i_method_one, i_other: @et_report.i_other, i_time: @et_report.i_time, introduction_number: @et_report.introduction_number, job_category: @et_report.job_category, job_vote_number: @et_report.job_vote_number, judge_count: @et_report.judge_count, office_name: @et_report.office_name, other_coment: @et_report.other_coment, postal_code: @et_report.postal_code, reporting_date: @et_report.reporting_date, s_method_appropriate: @et_report.s_method_appropriate, s_method_composition: @et_report.s_method_composition, s_method_interview: @et_report.s_method_interview, s_method_other: @et_report.s_method_other, s_method_physical: @et_report.s_method_physical, s_method_writing: @et_report.s_method_writing, selection_method: @et_report.selection_method, street_address: @et_report.street_address, student_class: @et_report.student_class, student_id: @et_report.student_id, student_number: @et_report.student_number, t_subject_aptitude: @et_report.t_subject_aptitude, t_subject_english: @et_report.t_subject_english, t_subject_general: @et_report.t_subject_general, t_subject_japanese: @et_report.t_subject_japanese, t_subject_math: @et_report.t_subject_math, t_subject_other_name: @et_report.t_subject_other_name, t_subject_other_time: @et_report.t_subject_other_time, t_subject_science: @et_report.t_subject_science, t_subject_society: @et_report.t_subject_society, test_day: @et_report.test_day, writing_test_contents: @et_report.writing_test_contents } }
    end

    assert_redirected_to et_report_url(EtReport.last)
  end

  test "should show et_report" do
    get et_report_url(@et_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_et_report_url(@et_report)
    assert_response :success
  end

  test "should update et_report" do
    patch et_report_url(@et_report), params: { et_report: { c_sheet_count: @et_report.c_sheet_count, composition_title: @et_report.composition_title, examination_hall: @et_report.examination_hall, examinees_count_man: @et_report.examinees_count_man, examinees_count_woman: @et_report.examinees_count_woman, i_contents: @et_report.i_contents, i_image: @et_report.i_image, i_method_count: @et_report.i_method_count, i_method_one: @et_report.i_method_one, i_other: @et_report.i_other, i_time: @et_report.i_time, introduction_number: @et_report.introduction_number, job_category: @et_report.job_category, job_vote_number: @et_report.job_vote_number, judge_count: @et_report.judge_count, office_name: @et_report.office_name, other_coment: @et_report.other_coment, postal_code: @et_report.postal_code, reporting_date: @et_report.reporting_date, s_method_appropriate: @et_report.s_method_appropriate, s_method_composition: @et_report.s_method_composition, s_method_interview: @et_report.s_method_interview, s_method_other: @et_report.s_method_other, s_method_physical: @et_report.s_method_physical, s_method_writing: @et_report.s_method_writing, selection_method: @et_report.selection_method, street_address: @et_report.street_address, student_class: @et_report.student_class, student_id: @et_report.student_id, student_number: @et_report.student_number, t_subject_aptitude: @et_report.t_subject_aptitude, t_subject_english: @et_report.t_subject_english, t_subject_general: @et_report.t_subject_general, t_subject_japanese: @et_report.t_subject_japanese, t_subject_math: @et_report.t_subject_math, t_subject_other_name: @et_report.t_subject_other_name, t_subject_other_time: @et_report.t_subject_other_time, t_subject_science: @et_report.t_subject_science, t_subject_society: @et_report.t_subject_society, test_day: @et_report.test_day, writing_test_contents: @et_report.writing_test_contents } }
    assert_redirected_to et_report_url(@et_report)
  end

  test "should destroy et_report" do
    assert_difference('EtReport.count', -1) do
      delete et_report_url(@et_report)
    end

    assert_redirected_to et_reports_url
  end
end
