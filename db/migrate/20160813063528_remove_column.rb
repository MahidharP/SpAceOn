class RemoveColumn < ActiveRecord::Migration
  def change
  	remove_column :profiles, :occupation
  end
end
