class AddPublishedToPresses < ActiveRecord::Migration
  def change
    add_column :presses, :published, :boolean
  end
end
