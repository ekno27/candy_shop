require_relative 'shelf'
require_relative 'candy'

class Shop
  def initialize
    @shelves = []
    @unshelvedCandies = []
  end

  # HELPER METHODS
  def findShelf(shelfName)
    for shelf in @shelves do
      if shelf.getName == shelfName
        return shelf
      end
    end
  end

  def findUnshelvedCandy(candyName)
    for candy in @unshelvedCandies do
      if candy.getName == candyName
        @unshelvedCandies.delete(candy)
        return candy
      end
    end
  end
  
  # MAIN METHODS 

  def addCandyToShop(candy)
    @unshelvedCandies.push(Candy.new(candy))
  end

  def addShelf(name)
    @shelves.push(Shelf.new(name))
  end

  def removeShelf(name)
    shelf = findShelf(name)
    @shelves.delete(shelf)
  end

  # adds candy to shelf list and marks candy as shelved
  def addCandyToShelf(candyName, shelfName)
    # find shelf
    shelf  = findShelf(shelfName)
    # Find unshelved candy
    candy = findUnshelvedCandy(candyName)
    # remove candy from unshelved list
    # add candy to shelf
    candy.markAsShelved
    shelf.addCandy(candy)
  end

  # remove candy from shelf list, add to unshelved list as an unshelved candy
  def removeCandyFromShelf(candyName, shelfName)
    shelf = findShelf(shelfName)
    candy = shelf.getCandy(candyName)
    @unshelvedCandies.push(candy)
    shelf.deleteCandy(candy)
  end
    

  # DISPLAY METHODS

  def listUnshelvedCandies
    for candy in @unshelvedCandies do
      puts candy.getName
    end
  end
  
  def listShelves
    for shelf in @shelves do
      puts shelf.getName  
    end
    puts ("Total shelves shop contains: #{@shelves.length}")
  end

  def listCandiesInShelf(shelfName)
    shelf = findShelf(shelfName)
    shelf.listCandies
    shelf.listCandyCount
  end

  def listAllCandiesInShelves
    for shelf in @shelves do
      shelf.listCandies
    end
  end
end