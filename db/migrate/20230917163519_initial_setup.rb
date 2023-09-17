class InitialSetup < ActiveRecord::Migration[7.0]
  def change
    create_table :years do |year|
      year.integer :year_number
      year.timestamps
    end

    create_table :months do |month|
      month.integer :month_number
      month.string :month_name
      month.timestamps
    end

    create_table :days do |day|
      day.integer :day_number
      day.string :day_name
      day.timestamps
    end

    create_table :notes do |note|
      note.text :note_content
      note.timestamps
    end
  end
end
