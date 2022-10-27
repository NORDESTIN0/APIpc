class CreatePedidos < ActiveRecord::Migration[7.0]
  def change
    create_table :pedidos do |t|
      t.string :motherboard
      t.string :ram
      t.string :cpu
      t.string :gpu

      t.timestamps
    end
  end
end
