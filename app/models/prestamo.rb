class Prestamo < ApplicationRecord
  belongs_to :usuario
  belongs_to :libro
end
