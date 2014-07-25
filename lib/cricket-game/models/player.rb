class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :specialism
  belongs_to :country

  def age
    now = Time.now.utc.to_date
    now.year - self.date_of_birth.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end

  def bowl
    p "#{self.name} bowls a ball."
  end

  def play
    p "#{self.name} plays at the delivery."
  end

  module Actions

    def bowl
      puts "hello"
    end
  end

end