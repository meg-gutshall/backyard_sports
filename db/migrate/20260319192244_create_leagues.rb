class CreateLeagues < ActiveRecord::Migration[8.1]
  def change
    create_table :leagues do |t|
      t.string :name
      t.integer :num_teams
      t.string :gender
      t.string :age_range
      t.string :location
      t.references :sport, null: false, foreign_key: true

      t.timestamps
    end
  end
end
