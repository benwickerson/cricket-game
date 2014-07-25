require 'active_record'
require 'csv'

Specialism.create!(name: "Batsman")
Specialism.create!(name: "Bowler")
Specialism.create!(name: "All-rounder")
Specialism.create!(name: "Wicket-Keeper")

Country.create!(country: "England")
Country.create!(country: "Australia")
Country.create!(country: "South Africa")
Country.create!(country: "India")
Country.create!(country: "New Zealand")
Country.create!(country: "Pakistan")
Country.create!(country: "Sri Lanka")
Country.create!(country: "West Indies")

CSV.foreach('db/players.csv', headers: true) do |row|
  row = Player.create!(
    name:           row[0],
    date_of_birth:  row[1],
    hand:           row[2],
    specialism_id:  row[3],
    country_id:     row[4]
  )
end

User.create!(username: "Ben", email: "Ben.Wickerson@gmail.com")
