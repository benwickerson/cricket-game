load 'load.rb'

@p = Player.first
@c = Country.first

class Object
  # Return only the methods not present on basic objects
  def interesting_methods
    (self.methods - Object.instance_methods).sort
  end
end