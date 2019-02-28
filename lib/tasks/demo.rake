# lib/tasks/demo.rake
desc "Run all files in db/seeds directory"

namespace :db do
  task demo: :environment do
  
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |filename|
      puts "seeding - #{filename}."
      load(filename)
    end

  end
end