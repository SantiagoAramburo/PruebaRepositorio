class Bicicletum < ApplicationRecord
    validates :marca, presence: true
    validates :rodada, presence: true, numericality: { only_integer: true,
        greater_than: 0 }
end
