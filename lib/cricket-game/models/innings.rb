class Innings < ActiveRecord::Base
  has_many :overs
  belongs_to :match
end