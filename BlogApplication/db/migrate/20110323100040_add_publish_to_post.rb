class AddPublishToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :publish, :boolean
  end

  def self.down
    remove_column :posts, :publish
  end
end
