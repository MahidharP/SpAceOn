class ChangeColumn < ActiveRecord::Migration
  def change
  	change_column :properities, :area, :integer 
  end
end
