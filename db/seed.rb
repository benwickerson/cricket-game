require 'active_record'
require 'csv'

Specialism.create!(name: "Batsman")
Specialism.create!(name: "Bowler")
Specialism.create!(name: "All-rounder")
Specialism.create!(name: "Wicket-Keeper")

Country.create!(text: "England")
Country.create!(text: "Australia")
Country.create!(text: "South Africa")
Country.create!(text: "India")
Country.create!(text: "New Zealand")
Country.create!(text: "Pakistan")
Country.create!(text: "Sri Lanka")
Country.create!(text: "West Indies")

CSV.foreach('db/players.csv', headers: true) do |row|
  row = Player.create!(
    name:           row[0],
    date_of_birth:  row[1],
    hand:           row[2],
    specialism_id:  row[3],
    country_id:     row[4]
  )
end

CSV.foreach('db/umpires.csv', headers: true) do |row|
  row = Umpire.create!(
    name:           row[0],
    country_id:     row[1],
    total_matches:  row[2],
    experience:     row[3]
  )
end

CSV.foreach('db/positions.csv', headers: true) do |row|
  row = F_position.create!(
    text:           row[0]
  )
end

User.create!(username: "Ben", email: "Ben.Wickerson@gmail.com")
