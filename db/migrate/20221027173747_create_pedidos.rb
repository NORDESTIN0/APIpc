class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.string :Motherboard
      t.string :Ram
      t.string :CPU
      t.string :GPU

      t.timestamps
    end
  end
end
