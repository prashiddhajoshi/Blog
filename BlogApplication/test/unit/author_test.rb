require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: authors
#
#  id         :integer         not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  address    :string(255)
#  sex        :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

