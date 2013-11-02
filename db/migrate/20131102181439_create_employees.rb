class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :FirstName
      t.string :LastName
      t.string :EmployeeId
      t.string :EmailAddress
      t.string :Department

      t.timestamps
    end
  end
end
