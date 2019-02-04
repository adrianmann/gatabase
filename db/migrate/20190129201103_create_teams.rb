class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.text :level
      t.text :county
      t.text :club

      t.timestamps null: false
    end
  end
end
