class CreateOffices < ActiveRecord::Migration
  def change
    create_table :offices do |t|
      t.string :city
      t.string :country
      t.text :address
      t.string :email
      t.string :website
      t.string :twitter
      t.string :pinterest
      t.string :mailchimp
      t.string :mixcloud

      t.timestamps
    end
  end
end
