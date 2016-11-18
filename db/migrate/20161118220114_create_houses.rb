class CreateHouses < ActiveRecord::Migration
  def change
    create_table :houses do |t|
      t.text :address
      t.references :owner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
