class Year < ApplicationRecord
  has_one :calendar
  has_many :months_years
  has_many :months, through: :months_years
  has_many :notes
  has_many :days, through: :months

  validates :year_number, presence: true
end
