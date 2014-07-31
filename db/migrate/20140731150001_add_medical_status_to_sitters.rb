class AddMedicalStatusToSitters < ActiveRecord::Migration
  def change
    add_column :sitters, :medical_status, :boolean
  end
end
