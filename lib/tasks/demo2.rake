# lib/tasks/demo.rake
desc "demo2 -- Run selected tasks db/seeds directory in specific sequence"

@seed_files = [
	"seed_admin_user",
	"seed_companies", 
	"seed_conditions",
	"seed_identifiers",
	"seed_materials",
	"seed_projects",
	"seed_roles_and_users",
	"seed_solutions_jobs",
	"seeds_summary"
]


namespace :db do
  task demo2: :environment do
    
    #Process each seed file in /db/seeds
    
    @seed_files.each do |filename|
    	fl = "#{Rails.root}/db/seeds/#{filename}.rb" 
      puts "Seeding:  #{fl}."
      load(fl)
      
    end

  end
end