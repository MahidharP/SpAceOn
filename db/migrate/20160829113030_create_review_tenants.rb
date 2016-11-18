class CreateReviewTenants < ActiveRecord::Migration
  def change
    create_table :review_tenants do |t|
      t.integer :user_id
      t.integer :tenant_id
      t.text :review
      t.float :rating

      t.timestamps
    end
  end
end
