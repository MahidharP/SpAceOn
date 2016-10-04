class CreateLocalities < ActiveRecord::Migration
	belongs_to :city 
  def change
    create_table :localities do |t|
      t.string :name
      t.integer :city_id

      t.timestamps
    end
  end
end
