class UpdateColumn < ActiveRecord::Migration
  def change
  	change_column :properities, :price, :integer
  	change_column :properities, :advance_amount, :integer
  end
end
