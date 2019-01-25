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


EeReport.create( reporting_date: '2017-10-17', student_class: 4, student_number: 12, student_id: 's20161414', school_name: '大阪成蹊短期大学', s_department_name: '幼児教育学科', test_day: '2017-10-14', street_address: '大阪府大阪市東淀川区相川 3-10-62', examination_hall: '大阪成蹊短期大学', result_publication_date: '2017-10-26', entrance_form: 2, recommended_group:2, r_self: true, recommended_form: 2, i_q_contents: '志望理由、入学して頑張りたいこと、大阪に来たことがあるか、当日、誰と来たか、商業高校からなぜ保育に道を選んだのか、一人暮らしで家庭学習時間をどのようにとるか、オープンキャンパスでは何をしたか（体験授業）', r_impression: '練習していないことも聞かれましたが、対応できました。', approval_flg: 0)
EeReport.create( reporting_date: '2017-12-11', student_class: 4, student_number: 12, student_id: 's20161414', school_name: '大阪健康福祉短期大学　松江キャンパス', s_department_name: '保育・幼児教育学科', test_day: '2017-12-09', street_address: '島根県松江市学園南1丁目15-10', examination_hall: '島根総合福祉専門学校 松江学園南キャンパス', result_publication_date: '2017-12-16', entrance_form: 2, recommended_group:2, r_self: true, recommended_form: 2, i_q_contents: '志望理由、なりたい保育士とその理由、事故PR、楽しかったこと、つらかったこととそれをどう乗り越えたか、気になったこと、印象に残っていることピアノの経験、不安なこと、「面接時間２０分」', r_impression: '面接官の方がうなずきながら聞いてくださったので、リラックスして質問に答えることができました。とても話しやすい雰囲気でした', approval_flg: 0)
EeReport.create( reporting_date: '2017-11-13', student_class: 4, student_number: 12, student_id: 's20161414', school_name: '大阪経済大学', s_faculty_name: '経済学部', s_department_name: '経済学科', test_day: '2017-11-11', street_address: '大阪府大阪市東淀川区大隅2-2-8', examination_hall: '大阪経済大学', result_publication_date: '2017-11-18', entrance_form: 2, recommended_group:2, r_self: true, recommended_form: '「書類選考」＋小論文＋試験', e_contents: '人間の離農を上回るAI(人口知能について)', w_contents: '新聞の記事「新風 Silicon Vaiiey AI開発 多様な視点で」の一部の文を要約する（300文字以内）、問題文を読み、人工知能（AI）全盛期はどのような社会になるのが人々にとって理想か、自分の考えを述べる。（500文字以内） d', r_impression: '小論文は先生から指導を受けたおかげで、困ることはありませんでした。しかし、商工系ということもあり工業系の知識がもう少し必要だと思いました。', approval_flg: 0)


