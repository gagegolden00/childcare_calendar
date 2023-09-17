class ChangeForeignKeyInDaysMonths < ActiveRecord::Migration[7.0]
  def change
    def change
      remove_reference :days_months, :day
      add_reference :days_months, :day, foreign_key: { to_table: :days }, primary_key: :day_number
    end
  end
end
