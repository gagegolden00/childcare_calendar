class Calendar < ApplicationRecord
  has_one :year

  validates :calendar_name, presence: true
end
