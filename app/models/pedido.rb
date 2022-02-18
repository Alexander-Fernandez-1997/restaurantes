class Pedido < ApplicationRecord
  belongs_to :restaurante
  belongs_to :empleado
  belongs_to :platillo
end
