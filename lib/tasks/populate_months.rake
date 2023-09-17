desc "create months"
namespace :populate do
  task months: :environment do
    month_name_array = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
    month_name_array.each_with_index do |name, index|
      Month.create!(month_name: name, month_number: index + 1)
      puts "Created month #{name}"
    end
    puts "Months populated"
  end
end
