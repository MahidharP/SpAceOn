class AddColumnToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :reviewee, :integer
  	add_column :reviews, :reviewer, :integer
  end
end
