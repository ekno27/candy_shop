require_relative 'shop'

# imported to show that a candy knows its name and whether it has been shelved
require_relative 'candy'

puts("\nAdding a test candy to show properties. Will not be added to shop")
testCandy = Candy.new('testaroo')
puts("Candy name: #{testCandy.getName}")
puts("Is Candy shelved? #{testCandy.shelfStatus}")

puts("\nCreating a shop...")

willyWonkas = Shop.new

puts("\nAdding candies")

# immediately add an unshelved candy
willyWonkas.addCandyToShop("snicker")
willyWonkas.addCandyToShop("Hersheys")
willyWonkas.addCandyToShop("Caramel Bar")

# list all unshelved candies
puts("\nUnshelved Candies:")
willyWonkas.listUnshelvedCandies

# Add a shelf, name used for reference
# which is immediately added to a shop
willyWonkas.addShelf("chocolate_bars")
willyWonkas.addShelf("caramels")


# Add unshelved candy to shelf, will only add unshelved candies
willyWonkas.addCandyToShelf("Caramel Bar", "caramels")
willyWonkas.addCandyToShelf("snicker", "chocolate_bars")

puts("\nUnshelved Candies left after shelving 2 candies:")
willyWonkas.listUnshelvedCandies

willyWonkas.addCandyToShelf("Hersheys", "chocolate_bars")



puts("\nShelves in shop:")
willyWonkas.listShelves

puts("\nCandies in chocolate_bars shelf:")
willyWonkas.listCandiesInShelf("chocolate_bars")

puts("\nRemoving snicker from chocolate_bars shelf....")
willyWonkas.removeCandyFromShelf("snicker", "chocolate_bars")

# proof candy was unshelved
puts("\nCandies in chocolate_bars shelf")
willyWonkas.listCandiesInShelf("chocolate_bars")

# list all candies in shelves
puts("\nAll Candies in shelves")
willyWonkas.listAllCandiesInShelves

# remove shelf 
puts("\nRemoving Caramel shelf....")
willyWonkas.removeShelf('caramels')

# proof of removed shelf
puts("\nShelves in shop:")
willyWonkas.listShelves


