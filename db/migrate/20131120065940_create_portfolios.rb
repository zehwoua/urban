class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :project_name
      t.string :shorttext
      t.string :city
      t.string :country
      t.string :region
      t.integer :year
      t.string :area
      t.integer :type_id
      t.boolean :interior
      t.boolean :installation
      t.boolean :research
      t.string :blurb
      t.text :copy
      t.string :img_credits_name
      t.string :img_credits_link

      t.timestamps
    end
  end
end
