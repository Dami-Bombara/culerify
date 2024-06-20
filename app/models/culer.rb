class Culer < ApplicationRecord
  validates :name, :country, presence: true
  validates :age, :kit_number, length: { maximum: 2 }
end