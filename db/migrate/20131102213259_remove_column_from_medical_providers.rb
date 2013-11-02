class RemoveColumnFromMedicalProviders < ActiveRecord::Migration
  def change
    remove_column :medical_providers, :string, :string
  end
end
