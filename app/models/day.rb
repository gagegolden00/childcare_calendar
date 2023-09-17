class Day < ApplicationRecord
  belongs_to :day
  has_many :note

  validates :day_number, presence: true
  validates :day_name, prescense: true
end
