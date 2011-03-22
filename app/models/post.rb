class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true
  validates :postedby, :presence => true

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