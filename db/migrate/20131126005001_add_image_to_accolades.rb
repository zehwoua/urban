class AddImageToAccolades < ActiveRecord::Migration
  def change
    add_column :accolades, :image, :string
  end
end
