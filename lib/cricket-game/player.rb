class Player < ActiveRecord::Base
  belongs_to :team
  belongs_to :specialism

  def age
    now = Time.now.utc.to_date
    now.year - self.date_of_birth.year - (date_of_birth.to_date.change(year: now.year) > now ? 1 : 0)
  end

  def to_s
    puts self.name
    puts self.age
    puts self.hand
    puts self.specialism.specialism
    puts self.team.name
  end

end