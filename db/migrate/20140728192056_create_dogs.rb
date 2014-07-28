class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.boolean :medical_status
      t.boolean :insurance
      t.boolean :full_time
      t.boolean :doggie_cam
      t.boolean :solo_care

      t.timestamps
    end
  end
end
