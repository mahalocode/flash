class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :picture
      t.text :caption

      t.integer :place_id
      t.timestamp
    end
    add_index :photos, :place_id

 end
end