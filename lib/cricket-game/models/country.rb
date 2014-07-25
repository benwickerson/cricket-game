class Country < ActiveRecord::Base
  has_many :series, foreign_key: 'home_country_id'
  has_many :series, foreign_key: 'visiting_country_id' 
  has_many :players
  has_many :grounds

end