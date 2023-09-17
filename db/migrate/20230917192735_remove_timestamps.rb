class RemoveTimestamps < ActiveRecord::Migration[7.0]
  def change
    remove_column :years, :created_at, :datetime
    remove_column :years, :updated_at, :datetime

    remove_column :days, :created_at, :datetime
    remove_column :days, :updated_at, :datetime

    remove_column :months, :created_at, :datetime
    remove_column :months, :updated_at, :datetime
  end
end

