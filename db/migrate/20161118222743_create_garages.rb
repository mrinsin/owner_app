class CreateGarages < ActiveRecord::Migration
  def change
    create_table :garages do |t|
      t.integer :space_number
      t.references :house, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
