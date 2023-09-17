class Calendar < ApplicationRecord
  belongs_to :year

  validates :calendar_name, presence: true
end
