class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.references :dog, index: true
      t.string :name
      t.string :email
      t.string :password
      t.boolean :doggie_cam
      t.boolean :insurance
      t.boolean :private_care
      t.boolean :full_time

      t.timestamps
    end
  end
end
