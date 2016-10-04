class CreateReviewOwners < ActiveRecord::Migration
  def change
    create_table :review_owners do |t|
      t.integer :user_id
      t.integer :owner_id
      t.text :review
      t.float :rating

      t.timestamps
    end
  end
end
