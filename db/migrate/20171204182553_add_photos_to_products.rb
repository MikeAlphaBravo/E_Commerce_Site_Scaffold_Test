class AddPhotosToProducts < ActiveRecord::Migration[5.1]
  def self.up
    change_table :products do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :products, :photo
  end
end
