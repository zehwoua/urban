class CreatePressCategories < ActiveRecord::Migration
  def change
    create_table :press_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
