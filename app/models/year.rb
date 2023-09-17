class Year < ApplicationRecord
  has_one :calendar
  has_many :months
  has_many :days, through: :months
  has_many :notes, through: :days

  validates :year_number, presence: true
end
