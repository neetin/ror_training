class AddUniqueTitleToAlbum < ActiveRecord::Migration
  def change
  	add_index :albums, :title, unique: true
  	add_index :albums, :user_id
  end
end
