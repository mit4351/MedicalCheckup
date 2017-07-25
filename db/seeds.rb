# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ===============
# 反映コマンド
# rake db:seed
# ===============
# =========================================
# coding: utf-8
# =========================================

# ================
#   アカウント
# ================
User.create!(name: "Manager", enpno: "000000", authority: "1", password: 'mit4351', password_confirmation: 'mit4351')
User.create!(name: "SystemManager", enpno: "900000", authority: "1", password: 'mit4351', password_confirmation: 'mit4351')

# ================
#  事業所マスタ
# ================
Office.create!(name: "沖縄銀行", number: "1", tel:"098-867-2141", zipcode: "900-8651", address: "那覇市久茂地３－１０－１", responsibleperson: "沖銀花子", deleteflg: "false")
Office.create!(name: "おきぎんビジネスサービス株式会社", number: "2", tel:"098-862-8057", zipcode: "900-0021", address: "沖縄県那覇市泉崎１丁目２１−１３ 沖宅第五ビル", responsibleperson: "ビジネス花子", deleteflg: "false")
Office.create!(name: "株式会社おきぎん経済研究所", number: "3", tel:"098-869-8711", zipcode: "900-0013", address: "沖縄県那覇市 牧志1-3-45 牧志ビル", responsibleperson: "経済花子", deleteflg: "false")
Office.create!(name: "美ら島債権回収株式会社", number: "4", tel:"098-860-2690", zipcode: "900-0013", address: "沖縄県那覇市牧志１丁目３−４５", responsibleperson: "美ら島花子", deleteflg: "false")
Office.create!(name: "おきぎん保証株式会社", number: "5", tel:"098-836-1717", zipcode: "900-0024", address: "沖縄県那覇市古波蔵３丁目８−８", responsibleperson: "保証花子", deleteflg: "false")
Office.create!(name: "株式会社おきぎんジェーシービー", number: "6", tel:"098-862-3201", zipcode: "900-8534", address: "沖縄県那覇市久茂地2丁目12番21号（電波堂ビル1階）", responsibleperson: "ジェーシービ花子", deleteflg: "false")
Office.create!(name: "株式会社おきぎんリース", number: "7", tel:"098-867-3141", zipcode: "900-0016", address: "沖縄県那覇市前島２丁目２１−１", responsibleperson: "リース花子", deleteflg: "false")
Office.create!(name: "株式会社おきぎんエス・ピー・オー", number: "12", tel:"098-917-0612", zipcode: "901-2224", address: "沖縄県宜野湾市真志喜１丁目１３−１６", responsibleperson: "エス・ピー・オ花子", deleteflg: "false")
Office.create!(name: "第一総業（株）", number: "13", tel:"098-853-5353", zipcode: "900-0024", address: "沖縄県那覇市古波蔵３丁目８−８", responsibleperson: "総業花子", deleteflg: "false")
Office.create!(name: "任意継続", number: "88", tel:"098-869-1223", zipcode: "900-0015", address: "沖縄県那覇市久茂地３丁目１０−１", responsibleperson: "健保花子", deleteflg: "false")


# ================
#  医療機関マスタ
# ================
Hospital.create!(number: "1", name: "大浜第一病院", dayoftheweek:"月〜金", tel:"866-5182", zipcode: "900-0005", address: "沖縄県那覇市天久１０００", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "2", name: "沖縄赤十字病院", dayoftheweek:"月〜金", tel:"836-7433", zipcode: "902-0076", address: "沖縄県那覇市与儀1−3−1", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "3", name: "豊見城中央病院付属健康管理センター", dayoftheweek:"月〜土", tel:"0120-932-322", zipcode: "901-0225", address: "沖縄県豊見城市豊崎３−４９", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "4", name: "浦添総合病院健診センター", dayoftheweek:"月〜土", tel:"0120-861-109", zipcode: "901-2132", address: "沖縄県浦添市伊祖3丁目42−15", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "5", name: "ハートライフ病院", dayoftheweek:"月〜土", tel:"870-3730", zipcode: "901-2492", address: "沖縄県中頭郡中城村伊集２０８", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "6", name: "ちばなクリニック", dayoftheweek:"月〜土", tel:"939-5477", zipcode: "904-2143", address: "沖縄県沖縄市知花６丁目２５−１５ ", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "7", name: "琉生病院", dayoftheweek:"月〜金", tel:"885-5131", zipcode: "902-0066", address: "沖縄県那覇市大道５６", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "8", name: "おもろまちメディカルセンター", dayoftheweek:"月〜金", tel:"867-2116", zipcode: "900-0011 ", address: " 沖縄県那覇市上之屋１丁目３−１", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "9", name: "沖縄セントラル病院", dayoftheweek:"月〜金", tel:"854-5511", zipcode: "902-0076 ", address: "沖縄県那覇市与儀１丁目２６", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "10", name: "那覇市医師会生活習慣病センター", dayoftheweek:"月〜土", tel:"868-9331", zipcode: "900-0034", address: "沖縄県那覇市東町２６−１", jcbflg: "false", remarks: "", deleteflg: "false")
Hospital.create!(number: "11", name: "中部地区医師会検診センター", dayoftheweek:"月〜土", tel:"936-8290", zipcode: "904-0113", address: "沖縄県中頭郡北谷町宮城１−５８４", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "12", name: "北部地区医師会病院健康管理センター", dayoftheweek:"月〜土", tel:"0980-52-0777", zipcode: "905-0009", address: "名護市宇茂佐の森五丁目2番地7  （北部会館4階）", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "13", name: "かりゆし病院", dayoftheweek:"月〜土", tel:"0980-84-3111", zipcode: "907-0024", address: "沖縄県石垣市新川２１２４", jcbflg: "false", remarks: "", deleteflg: "false")
Hospital.create!(number: "14", name: "沖縄県健康づくり財団", dayoftheweek:"月〜土", tel:"889-6792", zipcode: "901－1192", address: "南風原町字宮平212", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "15", name: "那覇市立病院健診センター", dayoftheweek:"月〜金", tel:"0120-784-155", zipcode: "902-8511", address: "沖縄県那覇市古島2丁目31番地1", jcbflg: "true", remarks: "", deleteflg: "false")
Hospital.create!(number: "16", name: "仲宗根クリニック", dayoftheweek:"月〜土", tel:"933-8000", zipcode: "904-2171", address: "沖縄県沖縄市高原７丁目２３−１４", jcbflg: "false", remarks: "", deleteflg: "false")
Hospital.create!(number: "17", name: "中部徳洲会病院", dayoftheweek:"月〜土", tel:"939-7555", zipcode: "901-2305", address: "沖縄県中頭郡北中城村 アワセ土地区画整理事業地内2街区1番", jcbflg: "true", remarks: "", deleteflg: "false")

# ================
#  検査項目マスタ
# ================
Inspectionitem.create!(number: "1", name: "人間ドッグ", amountofmone:"", subsidy:"25000", remarks:"",  hospitalflg: "true",  deleteflg: "false")
Inspectionitem.create!(number: "2", name: "ドッグ婦人科健診", amountofmone:"", subsidy:"5000", remarks:"",  hospitalflg: "true",  deleteflg: "false")
Inspectionitem.create!(number: "3", name: "大腸検査", amountofmone:"", subsidy:"8000", remarks:"",  hospitalflg: "true",  deleteflg: "false")
Inspectionitem.create!(number: "4", name: "脳検査及び頚動脈エコー検査", amountofmone:"", subsidy:"", remarks:"",  hospitalflg: "true",  deleteflg: "false")
Inspectionitem.create!(number: "5", name: "インフルエンザ予防接種", amountofmone:"", subsidy:"2500", remarks:"",  hospitalflg: "true",  deleteflg: "false")

# ================
#   性別
# ================
Sex.create!( number: 1, name: "男性")
Sex.create!( number: 2, name: "女性")

# ================
#   属性
# ================
Relationship.create!( number: 1, name: "本人")
Relationship.create!( number: 2, name: "配偶者")
Relationship.create!( number: 3, name: "家族")
