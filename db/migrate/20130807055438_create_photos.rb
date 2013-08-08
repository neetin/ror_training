class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.text :description
      t.references :album, index: true

      t.timestamps
    end
  end
end
