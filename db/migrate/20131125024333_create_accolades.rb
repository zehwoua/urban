class CreateAccolades < ActiveRecord::Migration
  def change
    create_table :accolades do |t|
      t.integer :accolade_category_id
      t.text :description
      t.string :title
      t.string :additional_info
      t.string :link_address
      t.boolean :published

      t.timestamps
    end
  end
end
