class User < ActiveRecord::Base
  has_many :games

  validates :email,     presence: true, uniqueness: true
end