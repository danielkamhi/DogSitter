class AddZipToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :zip, :integer
  end
end
