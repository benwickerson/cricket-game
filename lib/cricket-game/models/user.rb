class User < ActiveRecord::Base
  has_many :games

  validates :email,     presence: true, uniqueness: true

  def new_game
    Game.create(user_id: self.id)
  end
end