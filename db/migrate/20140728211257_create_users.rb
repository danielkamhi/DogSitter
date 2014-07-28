class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :dog, index: true
      t.string :fname
      t.string :lname
      t.string :email
      t.string :password
      t.boolean :sitter

      t.timestamps
    end
  end
end
