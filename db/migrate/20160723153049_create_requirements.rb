class CreateRequirements < ActiveRecord::Migration
  def change
    create_table :requirements do |t|
      t.string :min_area
      t.string :max_area
      t.integer :locality_id
      t.integer :city_id
      t.string :min_price
      t.string :max_price
      t.string :availabiity

      t.timestamps
    end
  end
end
