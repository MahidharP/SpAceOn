class AddUserRatingToUser < ActiveRecord::Migration
  def change
  	add_column :users, :user_rating, :integer
  	add_column :users, :user_review, :text
  end
end
