class CreateStates < ActiveRecord::Migration
  def change
    create_table(:states, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8') do |t|
      t.integer :country_id
      t.string :name

      t.timestamps
    end
  end
end
