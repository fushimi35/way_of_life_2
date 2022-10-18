# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

# Userの生成
CSV.foreach('db/csv/user.csv', headers: true) do |row|
 User.create(
   nickname: row['nickname'],
   last_education: row['last_education'],
   major: row['major']
 )
end

#Idealの生成
CSV.foreach('db/csv/ideal.csv', headers: true) do |row|
 Ideal.create(
   content: row['content']
 )
end

#Concernの生成
CSV.foreach('db/csv/concern.csv', headers: true) do |row|
 Concern.create(
   content: row['content']
 )
end

# Boardの生成
CSV.foreach('db/csv/board.csv', headers: true) do |row|
 Board.create(
   user_id: row['user_id'],
   title: row['title'],
   ideal_id: row['ideal_id_reserve'],
   concern_id: row['concern_id_reserve'],
   privacy: row['privacy']
 )
end


#Sectionの生成
CSV.foreach('db/csv/section.csv', headers: true) do |row|
 Section.create(
   name: row['name']
 )
end

#Detailの生成
CSV.foreach('db/csv/detail.csv', headers: true) do |row|
 Detail.create(
   name: row['name'],
   section_id: row['section_id']
 )
end

#Detailの生成
CSV.foreach('db/csv/block.csv', headers: true) do |row|
 Block.create(
   name: row['name'],
   section_id: row['section_id']
 )
end

#SmallBlockの生成
CSV.foreach('db/csv/small_block.csv', headers: true) do |row|
 SmallBlock.create(
   name: row['name'],
   block_id: row['block_id']
 )
end

#Questionの生成
CSV.foreach('db/csv/question.csv', headers: true) do |row|
 Question.create(
   content: row['content'],
   small_block_id: row['smallblock_id']
 )
end

# Answerの生成
CSV.foreach('db/csv/answer.csv', headers: true) do |row|
 Answer.create(
   user_id: row['user_id'],
   question_id: row['question_id'],
   detail_id: row['detail_id'],
   content: row['content']
 )
end
