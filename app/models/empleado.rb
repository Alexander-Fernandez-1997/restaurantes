class Empleado < ApplicationRecord
  validates :nombre, presence :true, uniqueness :true
  validates :edad, presence :true
  validates :rol, presence :true
end
