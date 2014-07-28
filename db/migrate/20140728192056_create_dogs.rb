class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :breed
      t.integer :age
      t.boolean :medical_status

      t.timestamps
    end
  end
end
