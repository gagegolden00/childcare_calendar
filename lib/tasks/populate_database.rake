desc "run all population tasks in order"
namespace :populate do
  task database: :test do
    'populate:months'
    'populate:days'
    puts "Database population completed."
  end
end
