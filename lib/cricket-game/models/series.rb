class Series < ActiveRecord::Base
  belongs_to :game
  belongs_to :country


  validates :game_id,             presence: true
  validates :home_country_id,     presence: true
  validates :visiting_country_id,     presence: true
end