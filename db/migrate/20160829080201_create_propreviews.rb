class CreatePropreviews < ActiveRecord::Migration
  def update
    update_table :propreviews do |t|
      t.integer :user_id
      t.integer :properity_id
      t.integer :rating
      t.text :review

      t.timestamps
    end
  end
end
