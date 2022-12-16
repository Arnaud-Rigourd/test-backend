puts "Creating listings..."

Listing.create!(num_rooms: 2)
Listing.create!(num_rooms: 1)
Listing.create!(num_rooms: 3)

puts "Listings done!"
