class Addlike < ActiveRecord::Migration
  def self.up
    add_column :posts, :no_of_likes, :integer, :default => 0
  end

  def self.down
    remove_column :posts, :no_of_likes, :integer
  end
end
