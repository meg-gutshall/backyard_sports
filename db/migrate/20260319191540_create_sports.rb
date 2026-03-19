class CreateSports < ActiveRecord::Migration[8.1]
  def change
    create_table :sports do |t|
      t.string :name
      t.integer :num_players
      t.string :season
      t.string :setting
      t.string :scoring_method

      t.timestamps
    end
  end
end
