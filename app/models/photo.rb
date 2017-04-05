class Photo < ApplicationRecord
  dragonfly_accessor :image
  # belongs_to :album
  before_save :assign_sort_order
  
  # TODO: WE ACTUALLY WANT SORT ORDER TO BE UNIQUE FOR A GIVEN ALBUM, NOT THE WHOLE TABLE
  def assign_sort_order
    if self.sort_order.nil?
      self.sort_order = (Photo.maximum(:sort_order) || 0) + 1
    end
  end
end

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
