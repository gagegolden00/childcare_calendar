class CreateJoinTableYearsMonths < ActiveRecord::Migration[7.0]
  def change
    # Remove the year_id column from the months table
    drop_table :months_years
    drop_table :days_months
    remove_column :months, :year_id, :bigint, null: false

    create_table :years_months, id: false do |t|
      t.bigint :year_id, null: false
      t.bigint :month_id, null: false
    end

    add_index :years_months, [:year_id, :month_id], unique: true
    add_index :years_months, [:month_id, :year_id], unique: true

    add_foreign_key :years_months, :years
    add_foreign_key :years_months, :months

    create_table :days_months, id: false do |t|
      t.bigint :day_id, null: false
      t.bigint :month_id, null: false
    end

    add_index :days_months, [:day_id, :month_id], unique: true
    add_index :days_months, [:month_id, :day_id], unique: true

    add_foreign_key :days_months, :days
    add_foreign_key :days_months, :months
  end
end

