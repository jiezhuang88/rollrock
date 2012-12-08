class AddColumnToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :parent_id, :integer
    add_column :posts, :isleaf, :boolean
  end

  def self.down
    remove_column :posts, :isleaf
    remove_column :posts, :parent_id
  end
end
