class Game < ActiveRecord::Base
  has_many :series
  belongs_to :user

  before_save :created_at

  validates :user_id, presence: true

  private 

    def created_at
      self['created_at'] = Time.now
    end
end