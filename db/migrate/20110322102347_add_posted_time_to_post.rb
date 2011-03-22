class AddPostedTimeToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :posted_time, :datetime
  end

  def self.down
    remove_column :posts, :posted_time
  end
end
