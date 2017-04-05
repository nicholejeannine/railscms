# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  heading    :string(255)      not null
#  label      :string(255)      not null
#  sort_order :integer          not null
#  content    :text(65535)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_pages_on_label       (label) UNIQUE
#  index_pages_on_sort_order  (sort_order) UNIQUE
#  index_pages_on_user_id     (user_id)
#

require 'test_helper'

class PageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
