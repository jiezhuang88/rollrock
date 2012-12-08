class CreateAdminMenus < ActiveRecord::Migration
  def self.up
    create_table :admin_menus do |t|
      t.string :name
      t.integer :parent_id
      t.boolean :isleaf,:default => false

      t.timestamps
    end
  end

  def self.down
    drop_table :admin_menus
  end
end
