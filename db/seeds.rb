# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#hospital 샘플들
Hospital.create(hos_name_display: "그랜드성형외과", hos_address: "서울시 강남구 신사동 514-16", hos_intro: "눈, 코, 입, 가슴, 윤곽 등 전분야 탑클래스 의료진과 경험 보유. 압구정 최대 단일 병원 그래드로 오세요", hos_name_eng: "grand")
Hospital.create(hos_name_display: "DA성형외과", hos_address: "서울 서초구 서초대로77길", hos_intro: "미의 기본은 자연스러움이다. 코, 눈 전문 10000건 이상의 케이스 보유. DA와 함께하세요.", hos_name_eng: "da")
Hospital.create(hos_name_display: "쥬얼리성형외과" , hos_address: "서울 강남구 도산대로 120 청호빌딩", hos_intro: "성형외과 전문의, 수술 중 마취통증의학과 전문의 항시 상주
1:1 맞춤성형, 단계별 사후관리", hos_name_eng: "juwerly")
Hospital.create(hos_name_display: "메가성형외과", hos_address: "서울 강남구 압구정로 158 2층", hos_intro: "아름다운 결과를 위한 1:1 개인맞춤플랜, 철저한 사후관리
체계화된 분야별 협력진료", hos_name_eng: "mega")
Hospital.create(hos_name_display: "리젠성형외과", hos_address: "서울 서초구 강남대로 463 리젠타워", hos_intro: "분야별 우수의료진, 상담원장 직접수술, 철저한 사후관리
수많은 진료경험, 환자의 안전 최우선", hos_name_eng: "regen")
#<<<<<<< HEAD
User.create(nickname: "eatanddie")
#=======

Bulletin.create! title: '공지사항'
Bulletin.create! title: '새소식'
Bulletin.create! title: '가입인사', post_type: 'blog'
Bulletin.create! title: '갤러리', post_type: 'gallery'
#>>>>>>> 6f4753b54e96bf0470763674405c7ecdc6c27bda



admin_user = User.new
admin_user.email = 'user@gochina.com'
admin_user.realname = '국수근'
admin_user.nickname = 'user'
admin_user.sex = 'male'
admin_user.age = '26'
admin_user.password = '00000000'
admin_user.password_confirmation = '00000000'
admin_user.save!

admin_codi = Codi.new
admin_codi.email = 'codi@gochina.com'
admin_codi.realname = '김병철'
admin_codi.nickname = 'codi'
admin_codi.hospital_id = '1'
admin_codi.password = '00000000'
admin_codi.password_confirmation = '00000000'
admin_codi.save!