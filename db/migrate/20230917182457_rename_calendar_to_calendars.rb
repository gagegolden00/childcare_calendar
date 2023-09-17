class RenameCalendarToCalendars < ActiveRecord::Migration[7.0]
  def change
    rename_table :calendar, :calendars
  end
end
