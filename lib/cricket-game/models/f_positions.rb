class F_position < ActiveRecord::Base
  belongs_to :country
  belongs_to :match
end