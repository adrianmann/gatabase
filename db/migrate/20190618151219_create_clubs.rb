class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.belongs_to :county, index: true, foreign_key: true
      t.text :level
      t.text :county
      t.text :club

      t.timestamps null: false
    end
  end
end
