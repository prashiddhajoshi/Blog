class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :postedby, :presence => true

  belongs_to :author
  has_many :comments

  before_save :do_titlecasing

  scope :show_all, :order => "title ASC"

  def index
    show_all
  end

  private

  def do_titlecasing
    self.title = title.titlecase
    self.postedby = postedby.titlecase
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

