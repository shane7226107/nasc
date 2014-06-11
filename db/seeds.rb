# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'boards...'
boards = [
	{id:1, name:'全心關懷 時刻守護', user_id:2},
	{id:2, name:'演訓頻道', user_id:2},
	{id:3, name:'飛行專欄', user_id:2},
	{id:4, name:'人事徵才', user_id:2}
]

Board.delete_all
boards.each do |board|
  e = Board.new board
  e.id = board[:id]
  e.save
end

puts 'articles...'
articles = [
	{id:1, title:'103年1月1日 O大X隊海上救難', board_id:1, photo:'/images/news/1.jpg', embed:'',text:'該隊接獲總隊下達命令，即刻派遣機型AS-365編號NA-109的海豚直升機，執行馬公EMS任務。待命機組員即刻上場於機前實施任務提示。於12:10時開車，12:20時台中清泉崗機場起飛，12:55時降落馬公機場接運病患、家屬、醫護人員共4名後，於13:05時起飛定向高雄小港機場，13:45時落地，13:50時關車，病患由救護車接運至醫院，任務圓滿完成。'},
	{id:2, title:'103年2月2日 O大X隊海上救難', board_id:1, photo:'/images/news/2.jpg', embed:'',text:'該隊接獲總隊下達命令，即刻派遣機型AS-365編號NA-109的海豚直升機，執行馬公EMS任務。待命機組員即刻上場於機前實施任務提示。於12:10時開車，12:20時台中清泉崗機場起飛，12:55時降落馬公機場接運病患、家屬、醫護人員共4名後，於13:05時起飛定向高雄小港機場，13:45時落地，13:50時關車，病患由救護車接運至醫院，任務圓滿完成。'},
	{id:3, title:'103年3月3日 O大X隊海上救難', board_id:1, photo:'/images/news/3.jpg', embed:'',text:'該隊接獲總隊下達命令，即刻派遣機型AS-365編號NA-109的海豚直升機，執行馬公EMS任務。待命機組員即刻上場於機前實施任務提示。於12:10時開車，12:20時台中清泉崗機場起飛，12:55時降落馬公機場接運病患、家屬、醫護人員共4名後，於13:05時起飛定向高雄小港機場，13:45時落地，13:50時關車，病患由救護車接運至醫院，任務圓滿完成。'},
	{id:4, title:'103年4月4日 O大X隊海上救難', board_id:1, photo:'/images/news/4.jpg', embed:'',text:'該隊接獲總隊下達命令，即刻派遣機型AS-365編號NA-109的海豚直升機，執行馬公EMS任務。待命機組員即刻上場於機前實施任務提示。於12:10時開車，12:20時台中清泉崗機場起飛，12:55時降落馬公機場接運病患、家屬、醫護人員共4名後，於13:05時起飛定向高雄小港機場，13:45時落地，13:50時關車，病患由救護車接運至醫院，任務圓滿完成。'}
]

Article.delete_all
articles.each do |e|
  n = Article.new e
  n.id = e[:id]
  n.save
end