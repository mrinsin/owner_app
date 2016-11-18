class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.integer :year
      t.string :color
      t.references :owner, index: true, foreign_key: true
      t.references :garage, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
