class Blog < ActiveRecord::Base
  validates :title, :presence => true
  validates :description, :presence => true

  before_save :do_titlecasing

  private
  def do_titlecasing
    self.title = title.titlecase
    self.postedby = postedby.titlecase
  end
end
