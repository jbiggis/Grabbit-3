class AddImageToDeals < ActiveRecord::Migration
  def self.up
    add_column :deals, :image_path, :string
  end

  def self.down
    remove_column :deals, :image_path
  end
end
