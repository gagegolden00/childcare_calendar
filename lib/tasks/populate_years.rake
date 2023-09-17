require_relative '../../config/environment'

desc "create years"
namespace :populate do
  task years: :test do
    start_year = 1900
    end_year = 2500
    year_number = start_year

    until year_number > end_year do
      Year.create!(year_number: year_number)
      puts "created year #{year_number}"
      year_number += 1
    end

    puts "Years populated from #{start_year} to #{end_year}."
  end
end
