class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.integer :office_id
      t.string :country
      t.integer :position_id
      t.string :education
      t.text :bio
      t.string :email

      t.timestamps
    end
  end
end
