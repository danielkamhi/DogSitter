class AddZipToSitters < ActiveRecord::Migration
  def change
    add_column :sitters, :zip, :integer
  end
end
