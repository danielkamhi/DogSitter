class AddLnameToSitters < ActiveRecord::Migration
  def change
    add_column :sitters, :lname, :string
  end
end
