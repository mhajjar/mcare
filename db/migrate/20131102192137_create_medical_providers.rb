class CreateMedicalProviders < ActiveRecord::Migration
  def change
    create_table :medical_providers do |t|
      t.string :Specialty
      t.string  :string
      t.string :street
      t.string :City
      t.string :Zip

      t.timestamps
    end
  end
end
