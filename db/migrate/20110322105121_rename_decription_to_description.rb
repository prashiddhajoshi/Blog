class RenameDecriptionToDescription < ActiveRecord::Migration
  def self.up
    rename_column :posts, :decription, :description
  end

  def self.down
  end
end
