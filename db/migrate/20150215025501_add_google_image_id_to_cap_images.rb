class AddGoogleImageIdToCapImages < ActiveRecord::Migration
  def change
    add_column :cap_images, :google_image_id, :string
  end
end


