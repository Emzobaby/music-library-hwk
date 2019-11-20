require('minitest/autorun')
require('minitest/reporters')
require_relative('../models/album')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class AlbumTest < MiniTest::Test

  def test_can_create_album
    album_details = {
      "title" => "In Search of Sunrise",
      "genre" => "electronic"
    }
    new_album = Album.new(album_details)
    assert_equal("In Search of Sunrise", new_album.title)
  end

end
