class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.integer :press_category_id
      t.text :description
      t.string :title
      t.string :additional_info
      t.text :quote
      t.string :link_address

      t.timestamps
    end
  end
end
