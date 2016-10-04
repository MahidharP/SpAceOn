class CreateProperities < ActiveRecord::Migration
  def change
    create_table :properities do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.integer :locality_id
      t.integer :city_id
      t.string :properity_type
      t.string :area
      t.string :price
      t.string :advance_amount
      t.text :description
      t.string :availability

      t.timestamps
    end
  end
end
