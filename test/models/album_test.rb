# == Schema Information
#
# Table name: albums
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  description :text(65535)
#  cover       :string(255)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_albums_on_title    (title) UNIQUE
#  index_albums_on_user_id  (user_id)
#

require 'test_helper'

class AlbumTest < ActiveSupport::TestCase
  test "can't save new album without a title" do
    album = Album.new
    album.save
    assert_not_nil(album.errors, "Shouldn't save album without a title")
  end
end
