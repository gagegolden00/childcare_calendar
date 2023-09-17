desc "run all population tasks in order"
namespace :populate do
  task database: :environment do
    #'populate:months'
    #'populate:days'
    puts "Database population completed."
  end
end
