class Pedido < ApplicationRecord
    validates :motherboard, :ram, :cpu, presence: true
    validates :ram, numericality: {less_than_or_equal_to: 64}
    validates :gpu, presence: false
end
