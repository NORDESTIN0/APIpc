class Pedido < ApplicationRecord
    validates :motherboard, presence: true
    validates :ram, presence: true, numericality: {less_than_or_equal_to: 64}
    validates :cpu, presence: true
    validates :gpu, presence: false
end
