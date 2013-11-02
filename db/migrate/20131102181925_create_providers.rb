class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :Name
      t.string :Street
      t.string :City
      t.string :State
      t.string :Zip

      t.timestamps
    end
  end
end
