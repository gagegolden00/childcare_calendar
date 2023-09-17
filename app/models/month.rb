class Month < ApplicationRecord
  belongs_to :year
  has_many :days
  has_many :notes, through: :days

  validates :month_name, presence: true
  validates :month_number, presence: true
end
