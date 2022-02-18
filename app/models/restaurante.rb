class Restaurante < ApplicationRecord
  belongs_to :platillo
  belongs_to :empleado
end
