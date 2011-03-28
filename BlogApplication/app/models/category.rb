class Category < ActiveRecord::Base

  has_many :posts, :authors

end
