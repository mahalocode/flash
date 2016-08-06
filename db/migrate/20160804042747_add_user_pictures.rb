class AddUserPictures < ActiveRecord::Migration
  def change
    add_index :photos, :user_id, :caption
    add_column :photo, :piture
  end
end
