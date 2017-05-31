# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

#Below is the csv parsing for the users.
#Passwords are encrypted with the MD5 algorithm.
require 'digest/md5'
csv_text = File.read('app\assets\users.txt')
mycsv = CSV.parse(csv_text, :headers => true, :col_sep => "\t")
mycsv.each do |row|
  password = Digest::MD5.hexdigest(row[1])
  User.create(username: row[0], password: password, email: row[2], preferences: row[3])
end

#Below is the csv parsing for the finales
#Straightforward enough.
csv2_text = File.read('app\assets\FinaleRatings.txt')
finalecsv = CSV.parse(csv2_text, :headers => true, :col_sep => "\t")
finalecsv.each do |row|
  Finale.create(series: row[0], viewership: row[1], rating: row[2], share: row[3], date: row[4], network: row[5])
end
