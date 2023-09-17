namespace :populate_db do
  task months: :environment do
    months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    months.each_with_index { |name, index| Month.create(month_name: name, month_number: index + 1) }
  end
end
