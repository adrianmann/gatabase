class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :team, index: true, foreign_key: true
      t.text :home
      t.text :away
      t.integer :home_goals
      t.integer :home_points
      t.integer :away_goals
      t.integer :away_points
      t.text :pitch

      t.timestamps null: false
    end
  end
end
