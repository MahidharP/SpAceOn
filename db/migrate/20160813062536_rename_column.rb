class RenameColumn < ActiveRecord::Migration
  def update
  	update_column :profiles, :occupation, :occupation_id
  end
end
