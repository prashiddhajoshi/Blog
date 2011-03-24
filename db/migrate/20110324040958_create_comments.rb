class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :commented_by
      t.text :comment_body

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
