class CreatePlatillos < ActiveRecord::Migration[6.1]
  def change
    create_table :platillos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
