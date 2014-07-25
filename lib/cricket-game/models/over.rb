class Over < ActiveRecord::Base
  has_many :balls
  belongs_to :inning

  def run_over
    puts "will run 6 deliveries" 
  end
  
end