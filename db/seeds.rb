# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_id: 's20171401', name: '西郷隆盛', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171402', name: '西郷輝彦', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171403', name: '西郷どん', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171404', name: '西郷吉見', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171405', name: '西郷輝美', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171406', name: '西郷西郷', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171407', name: '西郷最高', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171408', name: '後藤象二郎', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171409', name: '後藤輝基', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171410', name: '西郷の犬', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171411', name: '西郷ふぁ', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171412', name: '西郷だドン', password: '123', flg: 0, annual: 2017, authority: 2)
User.create(user_id: 's20171413', name: '西郷でした', password: '123', flg: 0, annual: 2017, authority: 2)

EeReport.create(id: 10,reporting_date: '2018-10-22', student_class: 4, student_number: 1, student_id: 's20171401', school_name: '出雲高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '島根県出雲市大津2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 11,reporting_date: '2018-10-22', student_class: 4, student_number: 2, student_id: 's20171402', school_name: '山高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '島根県松江市大津2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: '簡単です', g_impressions: '疲れました', recommended_form: 1, approval_flg: 1)
EeReport.create(id: 12,reporting_date: '2018-10-22', student_class: 4, student_number: 1, student_id: 's20171403', school_name: '海高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)

EtReport.create(id: 10,reporting_date: '2018-10-22', student_class: 4, student_number: 1, student_id: 's20171401', job_category: '銀行員', office_name: '山陰合同銀行',job_vote_number: 132, introduction_number: 1, test_day: '2018-10-19', postal_code: 6990623, street_address: '島根県出雲市斐川町上直江2525', examination_hall: '山陰合同銀行本社', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 0)
EtReport.create(id: 11,reporting_date: '2018-10-22', student_class: 4, student_number: 2, student_id: 's20171402', job_category: 'パイロット', office_name: 'NASA',job_vote_number: 132, introduction_number: 1, test_day: '2018-10-19', postal_code: 6990623, street_address: '米国県フロリダ州2424', examination_hall: 'NASA', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 0)
EtReport.create(id: 12,reporting_date: '2018-10-22', student_class: 4, student_number: 3, student_id: 's20171403', job_category: '教師', office_name: '出雲商業高校',job_vote_number: 132, introduction_number: 1, test_day: '2018-10-19', postal_code: 6990623, street_address: '島根県出雲市大津2525', examination_hall: '出雲商業高校', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 1)
