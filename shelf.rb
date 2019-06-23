class Shelf
  def initialize(name)
    @name = name
    @candies = []
  end

  def getName
    return @name
  end
  
  def getCandy(candyName)
    for candy in @candies do
      if candy.getName == candyName
        return candy
      end
    end
  end

  def addCandy(candy)
    @candies.push(candy)
  end

  def deleteCandy(candy)
    @candies.delete(candy)
  end

  def getCandyList
    return @candies
  end

  def listCandies
    for candy in @candies do
      puts(candy.getName)
    end
  end
  
  def listCandyCount
      puts("Candies in shelf:#{@candies.length}")
  end

end