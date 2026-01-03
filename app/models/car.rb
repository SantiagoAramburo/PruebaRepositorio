class Car < ApplicationRecord
    has_many :repairs, dependent: :destroy
    has_many :reports, as: :reportable, dependent: :destroy
    validates :make, presence: true
    validates :model, presence: true
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 1885 }
    scope :recent_models, -> { where("year >= ?", Date.current.year - 5) }
end
