class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.string :direccion
      t.integer :telefono
      t.integer :numero_visita
      t.timestamps
    end
  end
end
