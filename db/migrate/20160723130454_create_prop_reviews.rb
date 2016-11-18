class CreatePropReviews < ActiveRecord::Migration
  def change
    create_table :prop_reviews do |t|
      t.integer :user_id
      t.text :rev_desc
      t.integer :properity_id
      t.string :rating

      t.timestamps
    end
  end
end
