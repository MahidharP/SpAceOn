class CreateCities < ActiveRecord::Migration
	has_many :localities
	has_many :users
	has_many :properities
	
  def change
    create_table :cities do |t|
      t.string :name
      t.timestamps
    end
  end
end
