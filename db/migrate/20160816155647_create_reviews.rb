class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.text :review
      t.integer :properity_id
      t.integer :user_id

      t.timestamps
    end
  end
end
