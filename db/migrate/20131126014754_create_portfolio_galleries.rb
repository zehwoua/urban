class CreatePortfolioGalleries < ActiveRecord::Migration
  def change
    create_table :portfolio_galleries do |t|
      t.integer :portfolio_id
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
