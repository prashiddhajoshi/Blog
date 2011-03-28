class Comment < ActiveRecord::Base

  belongs_to :post

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

