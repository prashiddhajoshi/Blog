require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: comments
#
#  id           :integer         not null, primary key
#  commented_by :string(255)
#  comment_body :text
#  created_at   :datetime
#  updated_at   :datetime
#

