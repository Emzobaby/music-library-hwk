require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/artist')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class ArtistTest < MiniTest::Test

  def test_can_create_artist
    artist_details = {
      "name" => "Tiesto"
    }
    new_artist = Artist.new(artist_details)
    assert_equal("Tiesto", new_artist.name)
  end

end
