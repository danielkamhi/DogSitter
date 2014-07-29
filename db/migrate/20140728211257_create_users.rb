class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :dog, index: true
      t.string :fname
      t.string :lname
      t.boolean :sitter

      t.timestamps
    end
  end
end
