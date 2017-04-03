require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "can't save new album without a title" do
    album = Album.new
    album.save
    assert_not_nil(album.errors, "Shouldn't save album without a title")
  end
end
