require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end


# == Schema Information
#
# Table name: posts
#
#  id          :integer         not null, primary key
#  title       :string(255)
#  description :text
#  postedby    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  posted_time :datetime
#  publish     :boolean
#  category    :string(255)
#

