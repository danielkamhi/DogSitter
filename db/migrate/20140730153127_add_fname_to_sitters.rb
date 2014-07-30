class AddFnameToSitters < ActiveRecord::Migration
  def change
    add_column :sitters, :fname, :string
  end
end
