# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



region_hash = [{region_id:84, name:'용담2동', lat:33.5115150355, lng:126.5116815494, geohash:'wvcywudfx', radius:3000},
{region_id:83, name:'일도2동', lat:33.5116350504, lng:126.5382782665, geohash:'wvcyxkw77', radius:2000},
{region_id:82, name:'이도1동', lat:33.5068030832, lng:126.5269561041, geohash:'wvcyx5wp7', radius:2000},
{region_id:81, name:'건입동', lat:33.5150500906, lng:126.5315050323, geohash:'wvcyxm1rm', radius:3000},
{region_id:80, name:'일도1동', lat:33.5150594427, lng:126.5263773114, geohash:'wvcyxjjxq', radius:1000},
{region_id:79, name:'삼도2동', lat:33.5117400328, lng:126.5222150646, geohash:'wvcyxhdsj', radius:1000},
{region_id:78, name:'용담1동', lat:33.5091122745, lng:126.5132793043, geohash:'wvcywuhht', radius:1000},
{region_id:66, name:'천지연', lat:33.244699591, lng:126.559640755582, geohash:'wvcvpujbmm5v', radius:500},
{region_id:11, name:'플레이케이팝 비코닉스', lat:33.2499355230371, lng:126.41335659549, geohash:'wvcvhsgqutqf', radius:100},
{region_id:10, name:'동문재래시장', lat:33.5127666, lng:126.5262042, geohash:'wvcyxhvd40xd', radius:200},
{region_id:9, name:'제주국제공항 (백업)', lat:33.5065855858087, lng:126.492939774407, geohash:'wvcyw7tq50k0', radius:500},
{region_id:8, name:'제주 환상숲', lat:33.3229, lng:126.26305, geohash:'wvcv94jzyqcc', radius:150},
{region_id:7, name:'제주 4.3길', lat:33.3609152528855, lng:126.53589334422, geohash:'wvcvz3htkj2e', radius:2000},
{region_id:6, name:'플레이케이팝 박물관', lat:33.2499355230371, lng:126.41335659549, geohash:'wvcvhsgqutqf', radius:100},
{region_id:5, name:'Space.2', lat:33.4523875463996, lng:126.570889524299, geohash:'wvfn21y473p8', radius:120},
{region_id:4, name:'중문관광단지', lat:33.2433640847273, lng:126.417488577222, geohash:'wvcvhey2supx', radius:1800},
{region_id:3, name:'제주창조경제혁신센터', lat:33.5003036826363, lng:126.530082175328, geohash:'wvcyx683kt5x', radius:100},
{region_id:2, name:'제주국제공항', lat:33.5065855858087, lng:126.492939774407, geohash:'wvcyw7tq50k0', radius:500}]

region_hash.each do |region|
  Region.create!(region)
end

AdminUser.create!(email: 'capollux@naver.com', password: ENV["ACTIVE_ADMIN_PASSWORD"], password_confirmation: ENV["ACTIVE_ADMIN_PASSWORD"]) if Rails.env.development?
