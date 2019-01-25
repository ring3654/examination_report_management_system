# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(user_id: 't201701', name: '吉村先生', password: '123', flg: 0, annual: 2017, authority: 1)
User.create(user_id: 's20161414', name: '野々村幸彦', password: '123', flg: 0, annual: 2016, authority: 2)
User.create(user_id: 's20161415', name: '樋野拓人', password: '123', flg: 0, annual: 2016, authority: 2)
User.create(user_id: 's20161406', name: '伊藤陸', password: '123', flg: 0, annual: 2016, authority: 2)
User.create(user_id: 'g2016', name: 'ゲストユーザー', password: '123', flg: 0, annual: 2016, authority: 3)


EeReport.create(id: 10, reporting_date: '2018-09-01', student_class: 4, student_number: 1, student_id: 's20171401', school_name: '出雲大学', s_faculty_name: '理学部', s_department_name: '理学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '島根県出雲市大津2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 11, reporting_date: '2018-09-01', student_class: 4, student_number: 2, student_id: 's20171402', school_name: '山大学', s_faculty_name: '法学部', s_department_name: '法学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '島根県松江市大津2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: '簡単です', g_impressions: '疲れました', recommended_form: 1, approval_flg: 1)
EeReport.create(id: 12, reporting_date: '2018-09-01', student_class: 4, student_number: 3, student_id: 's20171403', school_name: '海大学', s_faculty_name: '薬学部', s_department_name: '薬剤学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 13, reporting_date: '2018-09-01', student_class: 4, student_number: 4, student_id: 's20171404', school_name: '土大学', s_faculty_name: '看護学部', s_department_name: '看護学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 14, reporting_date: '2018-09-01', student_class: 4, student_number: 5, student_id: 's20171405', school_name: '火大学', s_faculty_name: '経済学部', s_department_name: '経済学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 15, reporting_date: '2018-09-01', student_class: 4, student_number: 6, student_id: 's20171406', school_name: '水大学', s_faculty_name: '文学部', s_department_name: '文学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 16, reporting_date: '2018-09-01', student_class: 4, student_number: 7, student_id: 's20171407', school_name: '闇大学', s_faculty_name: '教育学部', s_department_name: '教育学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 17, reporting_date: '2018-09-01', student_class: 4, student_number: 8, student_id: 's20171408', school_name: '光大学', s_faculty_name: '外国語学部', s_department_name: 'フランス文学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 18, reporting_date: '2018-09-01', student_class: 4, student_number: 9, student_id: 's20171409', school_name: '神大学', s_faculty_name: '農学部', s_department_name: '農学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 19, reporting_date: '2018-09-01', student_class: 4, student_number: 10, student_id: 's20171410', school_name: 'アンデット族大学', s_faculty_name: '医学部', s_department_name: '医学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 20, reporting_date: '2018-09-01', student_class: 4, student_number: 11, student_id: 's20171411', school_name: '植物族大学', s_faculty_name: '歯学部', s_department_name: '歯学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 21, reporting_date: '2018-09-01', student_class: 4, student_number: 12, student_id: 's20171412', school_name: '魚族大学', s_faculty_name: '音楽学部', s_department_name: '音楽学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)
EeReport.create(id: 22, reporting_date: '2018-09-01', student_class: 4, student_number: 13, student_id: 's20171413', school_name: '鮪大学', s_faculty_name: '理工学部', s_department_name: '理工学科', test_day: '2018-08-19', postal_code: 6990513, street_address: '北海道十勝2525', examination_hall: '貴校', result_publication_date: '2018-08-20', entrance_form: 2, r_self: true, t_subject_japanese: 50, t_subject_math: 50, t_subject_society: 50, t_subject_science: 50, t_subject_english: 50, g_q_contents: 'とても難しかったです', g_impressions: '疲れました', recommended_form: 1, approval_flg: 0)

EtReport.create(id: 10,reporting_date: '2018-09-01', student_class: 4, student_number: 1, student_id: 's20171401', job_category: '銀行員', office_name: '山陰合同銀行',job_vote_number: 132, introduction_number: 1, test_day: '2018-08-19', postal_code: 6990623, street_address: '島根県出雲市斐川町上直江2525', examination_hall: '山陰合同銀行本社', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 0)
EtReport.create(id: 11,reporting_date: '2018-09-01', student_class: 4, student_number: 2, student_id: 's20171402', job_category: 'パイロット', office_name: 'NASA',job_vote_number: 132, introduction_number: 1, test_day: '2018-08-19', postal_code: 6990623, street_address: '米国県フロリダ州2424', examination_hall: 'NASA', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 0)
EtReport.create(id: 12,reporting_date: '2018-09-01', student_class: 4, student_number: 3, student_id: 's20171403', job_category: '教師', office_name: '出雲商業高校',job_vote_number: 132, introduction_number: 1, test_day: '2018-08-19', postal_code: 6990623, street_address: '島根県出雲市大津2525', examination_hall: '出雲商業高校', examinees_count_man: 1, examinees_count_woman: 1, selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: false, s_method_composition: false, s_method_physical: false, t_subject_japanese: 50, writing_test_contents: '余裕です', other_coment: '頑張ってください', approval_flg: 1)
EtReport.create(reporting_date: '2017-11-30', student_class: 4, student_number: 5, student_id: 's20161406', job_category: '営業職', office_name: '株式会社ファルコバイオシステムズ', job_vote_number: 2173, introduction_number: 1, test_day: '11-30', street_address: '島根県出雲塩谷善行町12-2', examination_hall: 'ビックハート出雲', examinees_count_man: 0, examinees_count_woman: 1, selection_method: 1, s_method_writing: false, s_method_appropriate: false, s_method_interview: true, s_method_composition: false, s_method_physical: false, s_method_other: false, t_subject_general: 30 i_method_one: 1, jodge_count: 2, i_time: 30~40, i_contens: '緊張はしているか？、部活動で学んだこと、自己アピール、コース選択について、体力はあるか、コミュニケーション能力はあるか、検定について、どのような内容か、クラスでどのくらいの割合が合格するか、好きな教科、出商デパートとは', writing_test_contents: '１から１００まで足すといくつ？、１６０ｇの食塩に６％の食塩水を１０ｇ混ぜた時、食塩水の濃度はいくつ、「腹心」の同類後は？３２人中Aさんは後から１０人目です。前から何人目？、日本が由来となった元素は？')
EtReport.create(reporting_date: '2017-11-30', student_class: 4, student_number: 5, student_id: 's20161406', job_category: '薬局事務' office_name: 'ハーブ薬局' introduction_number: 1, test_day: '11-30', street_address: '松江市本庄町531' examination_hall: 'ハーブ薬局' examinees_count_woman: 1, selection_method: 1, s_method_writing: true,  s_method_appropriate: false, s_method_interview: true, s_method_composition: true, s_method_physical: false, s_method_other: false, t_subject_japanese: 10, t_subject_math: 10 t_subject_other_name: '作文', t_subject_other_time: 10, i_method_one: 1, jodge_count: 2, i_time: 10, i_contens: '志望動機、薬局で必要だと思う力を３つとその理由、病気などについて勉強するならどんな方法でするのか、自分が薬局に入ったらいかせること、休みの日には何をするか、何をして遊んでいるか、どんな話をしているか、友達と話して自分のためになると思うこと、本は読まれますか、カフェに行くことになり土日にシフトが入ることについて、体力には自信はあるか、これからの薬局について、質問はありますか',　composition_title: '上司がミスをしていたらどうするのか', c_sheet_count: 1, writing_test_contents: '国語、漢字の読み書き、数学、簡単な計算問題（ルート、因数分解）、角度,確率、作文、例文のようなものがあって詳しいシチュエーションが書いてあり、それを読んでからなぜそう思うのかなぜそうしたら良いと、思うか書く。' other_coment: '筆記は基礎力が必要な問題でした。、時間が短いので焦らず問くといい。'
EtReport.create(reporting_date: '2015-09-24', student_class: 4, student_number: 13, student_id: 's20161415', job_category: '巫女', office_name: '出雲大社', introduction_number: 1, test_day: '2015-09-24', street_address: '出雲大社', examination_hall: '出雲大社　社務所内', selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: true, s_method_composition: true, s_method_physical: false, t_subject_japanese: 60, i_method_one: 1, judge_count: 3, i_time: 10, i_contents: '・いつから出雲大社で働きたいと思うようになったか。　・緊張しているか。　・作文で書いたことへの質問（作文から深くきかれる）　・成績表からへの質問　・巫女と販売する仕事は何が違うか。', composition_title: '志望動機', c_sheet_count: 2, writing_test_contents: '書き16問　・ヤクドシ　・ギオン祭り　・ノリト　・ハツモウデ　・シメナワ　・スウケイ　・ゾウエイ　・イセジングウ　・カンレキ　・イサン　・ハンジョウ　・ウジコ　・キッキョウ　・ブンカザイ　・コジキ　読み14問　・出雲大社　・神楽　・専ら　・繕う　・赴く　・廃れる　・練る　・否む　・境内　・御守り　・地鎮祭　・遷宮　・干支　・灯籠　全30問', other_coment: '自分のことをしっかりアピールすること。　緊張しすぎない！リラックスすること。　漢字はほぼ昨年のからでました。　神社に関する漢字を全部覚えておくこと。', approval_flg: 0)
EtReport.create(reporting_date: '2015-10-21', student_class: 4, student_number: 13, student_id: 's20161415', job_category: '製造業', office_name: 'オーエム金属工業株式会社', introduction_number: 1, test_day: '2015-10-21', street_address: '島根県松江市宍道町佐々布75番地', examination_hall: 'オーエム金属工業株式会社', examinees_count_man: 1, examinees_count_woman: 0, selection_method: 1, s_method_writing: false, s_method_appropriate: false, s_method_interview: true, s_method_composition: false, s_method_physical: false, i_method_one: 1, judge_count: 4, i_time: 30, i_contents: '志望理由　休みの日にどんなことをしているか　学校生活で頑張ったこと　部活以外で好きなこととくいなこと　車で通勤するのか　大会で全国に出場するのはすごいことか　製造業をずっと考え続けて来たか　クラスは何クラスあるのか　最後になにか言いたいことはあるか', other_coment: '声は大きいほうが良い　挨拶はしっかりとしたほうが良い', approval_flg: 0)
