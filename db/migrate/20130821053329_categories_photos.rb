class CategoriesPhotos < ActiveRecord::Migration
  def change
  	create_table :categories_photos, id:false do |t|
  		t.integer :category_id
  		t.integer :photo_id
  		t.timestamps
	end
  end
end