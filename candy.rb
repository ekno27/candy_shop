
class Candy

  def initialize(name)
    @name = name
    @shelved = false
  end

  def getName
    return @name
  end

  def shelfStatus
    return @shelved
  end
  
  def markAsShelved
    @shelved = true    
  end

  def markAsUnshelved
    @shelved = false
  end

end