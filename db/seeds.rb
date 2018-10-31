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

EeReport.create(reporting_date: '2018-10-22', student_class: 4, student_number: 1, student_id: 's20171401', school_name: '出雲高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '島根県出雲市大津2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(reporting_date: '2018-10-22', student_class: 4, student_number: 2, student_id: 's20171402', school_name: '山高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '島根県松江市大津2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: '簡単です', g_impressions: '疲れました', recommended_form: 1, approval_flg: 1)
EeReport.create(reporting_date: '2018-10-22', student_class: 4, student_number: 1, student_id: 's20171403', school_name: '海高校', s_department_name: '普通科', test_day: '2018-10-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-10-20', entrance_form: 2, r_self: 1, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
