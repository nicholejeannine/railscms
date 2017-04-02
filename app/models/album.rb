class Album < ApplicationRecord
  belongs_to :user
  has_many :photos
  validates_presence_of :title

end
