require 'csv'

def database_setup
  ActiveRecord::Schema.define do
    create_table :teams do |table|
      table.string  :name
    end

    create_table :players do |table|
      table.string    :name
      table.datetime  :date_of_birth
      table.string    :hand
      table.integer   :specialism_id
      table.integer   :team_id
    end

    create_table :specialisms do |table|
      table.string    :specialism
    end
  end
end

def populate_db
  Specialism.create!(specialism: "Batsman")
  Specialism.create!(specialism: "Bowler")
  Specialism.create!(specialism: "All-rounder")
  Specialism.create!(specialism: "Wicket-Keeper")

  Team.create!(name: "England")
  Team.create!(name: "Australia")
  Team.create!(name: "South Africa")
  Team.create!(name: "India")
  Team.create!(name: "New Zealand")
  Team.create!(name: "Pakistan")
  Team.create!(name: "Sri Lanka")
  Team.create!(name: "West Indies")

  CSV.foreach('db/players.csv', headers: true) do |row|
    row = Player.create!(
      name:           row[0],
      date_of_birth:  row[1],
      hand:           row[2],
      specialism_id:  row[3],
      team_id:        row[4]
    )
  end
end

