class CreateEmpleados < ActiveRecord::Migration[6.1]
  def change
    create_table :empleados do |t|
      t.string :nombre
      t.integer :edad
      t.string :rol

      t.timestamps
    end
  end
end
