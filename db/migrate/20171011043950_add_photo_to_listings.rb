class AddPhotoToListings < ActiveRecord::Migration[5.1]
  def change
    add_column :listings, :photo_data, :string
  end
end
