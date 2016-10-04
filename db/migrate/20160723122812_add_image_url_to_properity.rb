class AddImageUrlToProperity < ActiveRecord::Migration
  def change
    add_column :properities, :image_url, :string
  end
end
