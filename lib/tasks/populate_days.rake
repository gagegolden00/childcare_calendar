desc "create days"
namespace :populate do
  task days: :test do
    day_names = [
      'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'
    ]
    # Iterate through the day names and create Day records
    day_names.each do |name|
      Day.create(day_name: name)
    end
  end
end
