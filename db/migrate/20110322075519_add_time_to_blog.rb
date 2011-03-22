class AddTimeToBlog < ActiveRecord::Migration
  def self.up
    add_column :blogs, :time, :datetime
  end

  def self.down
    remove_column :blogs, :time
  end
end
