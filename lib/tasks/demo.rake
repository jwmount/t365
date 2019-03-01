# lib/tasks/demo.rake
desc "Run all files in db/seeds directory"

namespace :db do
  task demo: :environment do
    #Process each seed file in /db/seeds
    Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].each do |filename|
      puts "Seeding:  #{filename}."
      load(filename)
    end

  end
end