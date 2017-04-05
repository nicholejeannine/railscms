# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  image_uid  :string(255)      not null
#  title      :string(255)      not null
#  sort_order :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
