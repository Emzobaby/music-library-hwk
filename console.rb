require('pry')
require_relative('models/artist')
require_relative('models/album')

Album.delete_all
Artist.delete_all

artist1 = Artist.new({
  "name" => "Beyonce"
})
artist1.save

artist2 = Artist.new({
  "name" => "Tiesto"
  })
artist2.save

artist3 = Artist.new({
  "name" => "Jess Glynne"
  })
  artist3.save

album1 = Album.new({
  "title" => "In Search of Sunrise",
  "genre" => "electronic",
  "artist_id" => artist2.id
  })
  album1.save

  album2 = Album.new({
    "title" => "Lemonade",
    "genre" => "RnB",
    "artist_id" => artist1.id
    })
  album2.save

  album3 = Album.new({
    "title" => "I Cry When I Laugh",
    "genre" => "pop",
    "artist_id" => artist3.id
    })
    album3.save

    binding.pry
    nil
