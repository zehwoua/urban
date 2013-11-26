class AddPublishedToPortfolios < ActiveRecord::Migration
  def change
    add_column :portfolios, :published, :boolean
  end
end
