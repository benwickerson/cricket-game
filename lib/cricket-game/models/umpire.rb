class Umpire < ActiveRecord::Base
  belongs_to :country
  belongs_to :match
end