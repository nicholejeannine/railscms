class Album < ApplicationRecord
  belongs_to :user
  # has_many :photos
  validates_presence_of :title

end

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
