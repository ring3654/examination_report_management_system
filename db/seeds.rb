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


EtReport.create(reporting_date: '2015-09-24', student_class: 4, student_number: 13, student_id: 's20161415', job_category: '巫女', office_name: '出雲大社', introduction_number: 1, test_day: '2015-09-24', street_address: '出雲大社', examination_hall: '出雲大社　社務所内', selection_method: 1, s_method_writing: true, s_method_appropriate: false, s_method_interview: true, s_method_composition: true, s_method_physical: false, t_subject_japanese: 60, i_method_one: 1, judge_count: 3, i_time: 10, i_contents: '・いつから出雲大社で働きたいと思うようになったか。　・緊張しているか。　・作文で書いたことへの質問（作文から深くきかれる）　・成績表からへの質問　・巫女と販売する仕事は何が違うか。', composition_title: '志望動機', c_sheet_count: 2, writing_test_contents: '書き16問　・ヤクドシ　・ギオン祭り　・ノリト　・ハツモウデ　・シメナワ　・スウケイ　・ゾウエイ　・イセジングウ　・カンレキ　・イサン　・ハンジョウ　・ウジコ　・キッキョウ　・ブンカザイ　・コジキ　読み14問　・出雲大社　・神楽　・専ら　・繕う　・赴く　・廃れる　・練る　・否む　・境内　・御守り　・地鎮祭　・遷宮　・干支　・灯籠　全30問', other_coment: '自分のことをしっかりアピールすること。　緊張しすぎない！リラックスすること。　漢字はほぼ昨年のからでました。　神社に関する漢字を全部覚えておくこと。', approval_flg: 0)
EtReport.create(reporting_date: '2015-10-21', student_class: 4, student_number: 13, student_id: 's20161415', job_category: '製造業', office_name: 'オーエム金属工業株式会社', introduction_number: 1, test_day: '2015-10-21', street_address: '島根県松江市宍道町佐々布75番地', examination_hall: 'オーエム金属工業株式会社', examinees_count_man: 1, examinees_count_woman: 0, selection_method: 1, s_method_writing: false, s_method_appropriate: false, s_method_interview: true, s_method_composition: false, s_method_physical: false, i_method_one: 1, judge_count: 4, i_time: 30, i_contents: '志望理由　休みの日にどんなことをしているか　学校生活で頑張ったこと　部活以外で好きなこととくいなこと　車で通勤するのか　大会で全国に出場するのはすごいことか　製造業をずっと考え続けて来たか　クラスは何クラスあるのか　最後になにか言いたいことはあるか', other_coment: '声は大きいほうが良い　挨拶はしっかりとしたほうが良い', approval_flg: 0)
