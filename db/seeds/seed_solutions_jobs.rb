seed_solutions_jobs.rb

#
# D E M O  P R O J E C T  A N D  D E P E N D E N T S
#
#  company
#    project
#      quote
#        solutions
#          jobs
#            schedules
#              engagements
#


demo_list = [
  { "company"    => { name: "Demo Company", line_of_business: "General resource contractor", url: "www.wsj.com"},
    "address"    => { street_address: "9 Alder Court", city: "Fairfax", state: "CA", post_code: "94935"},
    "person"     => { first_name: "Demo", last_name: "Demosthenes"},
    "identifier" => { name: "Main Number", value: "415-478-1121"},
    "equipment"  => { name: "Truck" },
    "project"    => { name: 'DemoProject', project_start_on: Date.today },
    "projAddr"   => { street_address: "1017 MacDonald Ave.", city: "Richmond", state: "CA", post_code: "94801"},
    "quote"      => { name: "Q001", expected_start: Date.today + 1 },
    "solution"   => { name: "S01" },
    "job"        => { name: "JDemo", start_on: Date.today + 1, finished_on: Date.today + 2  },
    "schedule"   => { day: Date.today + 1 },
    "engagement" => {}
  }
]

puts "\nDemo list\n"
demo_list.each do |model| 
  @company = Company.find_or_create_by( model["company"] )

  @company.save
  @company.addresses.find_or_create_by( model["address"] )
  @company.people.create( model["person"] )
  @company.identifiers.create( model["identifier"] )
  @company.equipment.create( model["equipment"])
  @company.save

  @project = @company.projects.new( model["project"])
  @project.rep_id = 
  @project.save!

  @project.addresses.create!( model["projAddr"])
  @projmgr = @company.people.first

  @quote = @project.quotes.new( model["quote"])
  @quote.quote_to_id = @projmgr.id
  @quote.rep_id = 1
  @quote.expected_start = Date.today + 1
  @quote.fire_ants_verified_by = 1
  @quote.save! 

  @solution = @quote.solutions.new( model ["solution"] )
  @solution.material_id = 1
  @solution.equipment_name = "Truck"
  @solution.valid?
  @solution.save

  # https://stackoverflow.com/questions/4714001/in-rails-how-can-i-find-out-what-caused-a-save-to-fail-other-than-validatio
  # ActiveRecord::RecordInvalid 
  # ActiveRecord::RecordNotSaved
  begin
    @solution.save
  rescue ActiveRecord::RecordInvalid
    puts errs = @solution.errors.full_messages
  rescue ActiveRecord::RecordNotSaved
    puts errs = @solution.errors.full_messages
  end
    


  @job = @solution.jobs.create( model ["job"] )
  @schedule = @job.schedules.create( model ["schedule"] )
  @engagement = @schedule.engagements.new( model ["engagement"] )
  @engagement.person_id = 1
  @engagement.save

  #@docket = @engagement.dockets.create!( person_id: 1, number: "00001")
end
