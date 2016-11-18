class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :full_name
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps null: false
    end
  end
end
