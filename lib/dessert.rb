class Dessert
  attr_accessor :name,:calories
  
  def initialize(name, calories)
     self.name = name
     self.calories = calories
  end
  def healthy?
    self.calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    super(flavor + " jelly bean",5)
    self.flavor = flavor
  end
  def delicious?
    flavor != "licorice"
  end
end
