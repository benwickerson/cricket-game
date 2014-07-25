require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3", 
  :database => 'db/cricket.db'
)

ActiveRecord::Schema.define do

## - Things - ##

  create_table :users do |table|
    table.string    :username
    table.string    :email
  end

  create_table :games do |table|
    table.integer   :user_id
    table.datetime  :created_at
  end

  create_table :players do |table|
    table.string    :name
    table.datetime  :date_of_birth
    table.string    :hand
    table.integer   :specialism_id
    table.integer   :country_id
  end

  create_table :specialisms do |table|
    table.string    :name
  end

  create_table :countries do |table|
    table.string    :text
  end

  create_table :grounds do |table|
    table.string    :name
    table.integer   :capacity
    table.integer   :country_id
  end

  create_table :f_positions do |table|
    table.string    :text 
  end

## - The game - ##
## A user starts the game, signs in and either starts a new series or continues an old one
## A series is between two countries - the user either chooses a 15-man squad for each country
## or selects just the squad for the country they want to 'control'.

## the user then chooses how many tests in the series along with the grounds where the tests will
## be played - details about the ground will be available so aid in the selection.

## if the user is playing a home series, then the user will be able to adjust the pitch preperation
## to help with the home-side's playing style, otherwise the user can just read about the pitches
## to be played on.

## the user then reads about the first test - weather, pitch etc.
## the user then selects the team(11) to play the first test.
## the user then does the coin toss.
## depending on who wins the toss, the user chooses to bat or bowl

## - Batting - ##

## User

  create_table :series do |table|
    table.string    :name
    table.integer   :game_id
    table.integer   :home_country_id
    table.integer   :visiting_country_id
  end

  create_table :squads do |table|
    table.integer   :country_id
    table.integer   :series_id
    table.integer   :player_id
  end

  create_table :matches do |table|
    table.integer   :ground_id
    table.integer   :home_team_id
    table.integer   :away_team_id
  end

  create_table :teams do |table|
    table.string    :name
  end

  create_table :innings do |table|
    table.integer   :match_id
  end

  create_table :overs do |table|
    table.integer   :innings_id
    table.integer   :bowler_id
  end

  create_table :deliveries do |table|
    table.integer   :over_id
    table.integer   :bowler_id
    table.integer   :facing_batsman_id
    table.integer   :non_striker_id
  end

  create_table :ball do |table|
    table.integer   :age
    table.integer   :condition
    table.integer   :shine
    table.integer   :seam
  end

  create_table :pitch do |table|
    table.integer   :match_id
  end

  create_table :umpires do |table|
    table.string    :name
    table.integer   :country_id
    table.integer   :total_matches
    table.integer   :experience
  end

end