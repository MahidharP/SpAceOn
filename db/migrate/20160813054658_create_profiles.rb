class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.string :occupation
      t.string :gender
      t.integer :mobile
      t.string :pro_pic
      t.string :id_proof
      t.integer :user_id

      t.timestamps
    end
  end
end
