class Photo < ApplicationRecord
  belongs_to :album
  before_save :assign_sort_order
  
  # TODO: WE ACTUALLY WANT SORT ORDER TO BE UNIQUE FOR A GIVEN ALBUM, NOT THE WHOLE TABLE
  def assign_sort_order
    if self.sort_order.nil?
      self.sort_order = (Photo.maximum(:sort_order) || 0) + 1
    end
  end
end
