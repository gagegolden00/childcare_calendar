class Year < ApplicationRecord
  belongs_to :calendar
  has_many :months
  has_many :days, through: :months
  has_many :notes, through: :days

  validates :year_number, prescense: true
end
