class Match < ActiveRecord::Base
  has_many :innings
  belongs_to :series
end