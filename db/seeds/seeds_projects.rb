# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# Construction Projects in the East Bay from Business Times Lists published December 6-12, 2013
# Equipment, employee names not known as not in BT List
#
def rep
  rep ||= Person.where("title = ?", "Rep")[0].id
end
@projects_list = [
 { "company"     => { name: "McCarthy Building Cos. Inc.", line_of_business: "Construction", url: "www.mccarthy.com"},
    "address"    => { street_address: "343 Sansome St., 14th Floor", city: "San Francisco", state: "CA", post_code: "94104"},
    "identifier" => { name: "Main Number", value: "415 397-5151"},
    "project"    => { name: 'Kaiser Hospital Replacement Project Phase II', 
                      rep_id: rep, 
                      project_start_on: "01-04-2010",
                      description: "879,000 square foot hospital and medical office building."},
    "projAddr"   => { street_address: "280 W. MacArthur Blvd.", city: "Oakland", state: "CA", post_code: "94611"}
  },
 { "company"     => { name: "Rudolph and Sletten Inc.", line_of_business: "Construction", url: "www.rsconstruction.com"},
    "address"    => { street_address: "1600 Seaport Blvd., Ste. 350", city: "Redwood City", state: "CA", post_code: "94063"},
    "identifier" => { name: "Main Number", value: "650 216-3600"},
    "project"    => { name: "Kaiser Permanente San Leandro Medical Center", rep_id: rep, project_start_on: "01-01-2010",
                      description: "Hospital with 264 acute care beds."},
    "projAddr"   => { street_address: "1755 Fairway Drive", city: "San Leandro", state: "CA", post_code: "94577"}
  },
 { "company"     => { name: "Clark Construction Group - California LLP", line_of_business: "Construction", url: "www.clarkconstruction.com"},
    "address"    => { street_address: "7677 Oakport St., Ste. 1040", city: "Oakland", state: "CA", post_code: "94621"},
    "identifier" => { name: "Main Number", value: "510 430-6000"},
    "project"    => { name: "Highland Hospital - Alameda Country Medical Center", rep_id: rep, project_start_on: "01-01-2010",
                      description: "169-bed acute care tower, 78,000-square-foot satellite building."},
    "projAddr"   => { street_address: "1411 E. 32st St.", city: "Oakland", state: "CA", post_code: "94602"}
  },
 { "company"     => { name: "Flatiron Construction Corp.", line_of_business: "Construction", url: "www.flatironcorp.com"},
    "address"    => { street_address: "2100 Goodyear Road", city: "Benicia", state: "CA", post_code: "94510"},
    "identifier" => { name: "Main Number", value: "707 742-6000"},
    "project"    => { name: "BART Oakland Airport Connector", rep_id: rep, project_start_on: "11-11-2013",
                      description: "3.2 mile connection between Coliseum and airport."},
    "projAddr"   => { street_address: "1100 Airport Drive", city: "Oakland", state: "CA", post_code: "94621"}
  },
 { "company"     => { name: "Webcor Builders", line_of_business: "Construction", url: "www.webcor.com"},
    "address"    => { street_address: "207 King St., Ste. 300", city: "San Francisco", state: "CA", post_code: "94107"},
    "identifier" => { name: "Main Number", value: "415 978-1000"},
    "project"    => { name: "California Memorial Stadium Seismic Improvements", rep_id: rep, project_start_on: "06-10-2013",
                      description: "Reconstruction and revovation of historic stadium"},
    "projAddr"   => { street_address: "Rimway Road and Canyon Road", city: "Berkeley", state: "CA", post_code: "94704"}
  },
 { "company"     => { name: "DPR Construction", line_of_business: "Construction", url: "www.dpr.com"},
    "address"    => { street_address: "1450-Veterans Blvd.", city: "Redwood City", state: "CA", post_code: "94063"},
    "identifier" => { name: "Main Number", value: "650 474-1450"},
    "project"    => { name: "Alta Bates Oakland Campus, Patient Care Pavilion", rep_id: rep, project_start_on: "08-10-2013",
                      description: "250,000-square-foot, 13-story hospital including 238 beds."},
    "projAddr"   => { street_address: "350 Hawthorne Ave.", city: "Oakland", state: "CA", post_code: "94609"}
  },
 { "company"     => { name: "Top Grade Construction Inc.", line_of_business: "Construction", url: "www.topgradeconstruction.com"},
    "address"    => { street_address: "50 Contractors St.", city: "Livermore", state: "CA", post_code: "94551"},
    "identifier" => { name: "Main Number", value: "925 449-5764"},
    "project"    => { name: "Stoneridge Creek", rep_id: rep, project_start_on: "01-01-2010",
                      description: "Senior living community with 479 units."},
    "projAddr"   => { street_address: "5698 Stoneridge Drive", city: "Pleasanton", state: "CA", post_code: "94588"}
  },
 { "company"     => { name: "S.D. Deacon Corp.", line_of_business: "Construction", url: "www.deacon.com"},
    "address"    => { street_address: "7745 Greenback Lane, Ste. 250", city: "Citrus Heights", state: "CA", post_code: "95610"},
    "identifier" => { name: "Main Number", value: "916 969-0900"},
    "project"    => { name: "Paragon Outlet Mall", rep_id: rep, 
                      project_start_on: "08-11-2013",
                      description: "543,000 square foot outlet mall."},
    "projAddr"   => { street_address: "El Charro Road and Interstate 580", city: "Livermore", state: "CA", post_code: "94588"}
  },
 { "company"     => { name: "Skanska", line_of_business: "Construction", url: "www.skanska.com"},
    "address"    => { street_address: "1999 Harrison St.", city: "Oakland", state: "CA", post_code: "94612"},
    "identifier" => { name: "Main Number", value: "510 285-1800"},
    "project"    => { name: "BART Warm Springs Extension Phase I", rep_id: rep, 
                      project_start_on: "08-09-2013",
                      description: "New alignment for BART extension to Warm Springs"},
    "projAddr"   => { street_address: "1320 Stevenson Blvd.", city: "Fremont", state: "CA", post_code: "94538"}
  },
 { "company"     => { name: "Turner Construction Co.", line_of_business: "Construction", url: "www.turnerconstruction.com/oakland"},
    "address"    => { street_address: "1111 Broadway, Ste. 2100", city: "Oakland", state: "CA", post_code: "94607"},
    "identifier" => { name: "Main Number", value: "510 267-8100"},
    "project"    => { name: "Oakland International Airport Terminal 1", rep_id: rep, 
                      project_start_on: "12-07-2013",
                      description: "300,000 square foot renovation including central utility plant."},
    "projAddr"   => { street_address: "1100 Airport Drive", city: "Oakland", state: "CA", post_code: "94621"}
  },
 { "company"     => { name: "Rudolph and Sletten Inc.", line_of_business: "Construction", url: ""},
    "address"    => { street_address: "1111 Broadway, Ste. 2100", city: "Oakland", state: "CA", post_code: "94607"},
    "identifier" => { name: "Main Number", value: "510 267-8100"},
    "project"    => { name: "UC Berkeley Energy Biosciences Building", rep_id: rep, 
                      project_start_on: "03-10-2013",
                      description: "112,600 square foot multi-story lab and office building."},
    "projAddr"   => { street_address: "2151 Berkeley Way", city: "Berkeley", state: "CA", post_code: "94709"}
  },
 { "company"     => { name: "SCM Construction Management Services Inc.", line_of_business: "Construction", url: "www.scmcms.com"},
    "address"    => { street_address: "1920 Standiford Ave., Ste 1", city: "Modesto", state: "CA", post_code: "95350"},
    "identifier" => { name: "Main Number", value: "209 338-0157"},
    "project"    => { name: "Linc (formerly West Dublin Apartments)", rep_id: rep, 
                      project_start_on: "01-01-2011",
                      description: "309-unit transit-oriented apartment complex."},
    "projAddr"   => { street_address: "6600 Golden Gate Drive", city: "Dublin", state: "CA", post_code: "94588"}
  },
 { "company"     => { name: "Vance Brown Builders", line_of_business: "Construction", url: "www.vancebrown.com"},
    "address"    => { street_address: "3197 Park Blvd.,", city: "Palo Alto", state: "CA", post_code: "94306"},
    "identifier" => { name: "Main Number", value: "650 849-9900"},
    "project"    => { name: "Martinez Commons", rep_id: rep, 
                      project_start_on: "01-09-2010",
                      description: "416-bed student dormitory."},
    "projAddr"   => { street_address: "2520 Channing Way", city: "Berkeley", state: "CA", post_code: "94720"}
  },
 { "company"     => { name: "AvalonBay Communities Inc.", line_of_business: "Construction", url: "www.avalonbay.com"},
    "address"    => { street_address: "455 Market St., Ste 1650", city: "San Francisco", state: "CA", post_code: "94105"},
    "identifier" => { name: "Main Number", value: "415 284-9087"},
    "project"    => { name: "Avalon Dublin Station II", rep_id: rep, 
                      project_start_on: "04-01-2012",
                      description: "255 units, 4-story wooden frame structure."},
    "projAddr"   => { street_address: "5200 Iron Horse Pkwy.", city: "Dublin", state: "CA", post_code: "94568"}
  },
 { "company"     => { name: "O.C. Jones & Sons Inc." },
    "project"    => { name: "State Route 4 Widening-Loverige Interchange", rep_id: rep, 
                      project_start_on: "09-01-2010",
                      description: "Freeway bridge widenings and adjacent ramps."},
    "projAddr"   => { street_address: "Hwy. 4, Loveridge Road", city: "Pittsburg", state: "CA", post_code: "94565"}
  },
 { "company"     => { name: "Webcor Builders" },
    "project"    => { name: "Lawrence Berkeley National Laboratory Phase II", rep_id: rep, 
                      project_start_on: "03-01-2010",
                      description: "43,000-square-foot construction and modernization."},
    "projAddr"   => { street_address: "One Cyclotron Road", city: "Berkeley", state: "CA", post_code: "94720"}
  },
 { "company"     => { name: "SCM Construction Management Services Inc." },
    "project"    => { name: "Public Market Emeryville Apartments", rep_id: rep, 
                      project_start_on: "05-01-2012",
                      description: "190-unit Apartment complex."},
    "projAddr"   => { street_address: "5959 Shellmound St.", city: "Emeryville", state: "CA", post_code: "94608"}
  },
 { "company"     => { name: "Balfour Beatty", line_of_business: "Construction", url: "www.howardswright.com" },
    "address"    => { street_address: "5858 Horton St., Ste. 170", city: "Emeryville", state: "CA", post_code: "94608"},
    "identifier" => { name: "Main Number", value: "510 903-2054"},
    "project"    => { name: "MacArthur Transit Village Phase I", rep_id: rep, 
                      project_start_on: "07-01-2012",
                      description: "Infrastructure and 170,333-square-foot parking garage." },
    "projAddr"   => { street_address: "550 W. MacArthur Blvd.", city: "Oakland", state: "CA", post_code: "94609" }
  },
 { "company"     => { name: "Top Grade Construction Inc." },
    "project"    => { name: "Route 238 Corridor Improvement", rep_id: rep, 
                      project_start_on: "09-01-2010",
                      description: "Loop system, landscaping and spot widening."},
    "projAddr"   => { street_address: "Mission Blvd.", city: "Hayward", state: "CA", post_code: "94536"}
  },
 { "company"     => { name: "Johnstone Moyer Inc.", line_of_business: "Construction", url: "www.johnstonemoyer.com" },
    "address"    => { street_address: "1720 S. Amphlett Blvd., Ste. 250", city: "San Mateo", state: "CA", post_code: "94402"},
    "identifier" => { name: "Main Number", value: "650 570-6161"},
    "project"    => { name: "Brio", rep_id: rep, 
                      project_start_on: "10-01-2012",
                      description: "300-unit, 5-acre apartment complex."},
    "projAddr"   => { street_address: "141 N. Civic Drive", city: "Walnut Creek", state: "CA", post_code: "94596"}
  },
 { "company"     => { name: "J.R. Roberts/Deacon Inc.", line_of_business: "Construction", url: "www.jrrobertsdeacon.com" },
    "address"    => { street_address: "6140 Stoneridge Mall Road, Ste. 370", city: "unknown", state: "CA", post_code: "00000"},
    "identifier" => { name: "Main Number", value: "916 729-5600"},
    "project"    => { name: "Paragon", rep_id: rep, 
                      project_start_on: "10-01-2012",
                      description: "301-unit mixed-use apartment community and retail."},
    "projAddr"   => { street_address: "3700 Beacon Ave.", city: "Fremont", state: "CA", post_code: ""}
  },
 { "company"     => { name: "UC Construction", line_of_business: "Construction", url: "www.ucconstruct.com" },
    "address"    => { street_address: "4216 Kiernan Ave.", city: "Modesto", state: "CA", post_code: "95356"},
    "identifier" => { name: "Main Number", value: "209 543-1608"},
    "project"    => { name: "Foothill Square Redevelopment Project", rep_id: rep, 
                      project_start_on: "06-01-2012",
                      description: "201,900-square-foot shopping center redevelopment."},
    "projAddr"   => { street_address: "10700 MacArthur Blvd.", city: "Oakland", state: "CA", post_code: "94605"}
  },
 { "company"     => { name: "Build Group Inc.", line_of_business: "Construction", url: "www.buildgc.com" },
    "address"    => { street_address: "457 Minna St., Ste. 100", city: "Modesto", state: "CA", post_code: "94103"},
    "identifier" => { name: "Main Number", value: "415 367-9399"},
    "project"    => { name: "Archstone Parkside", rep_id: rep, 
                      project_start_on: "05-01-2012",
                      description: "175 luxury live/work units and ground-level retail."},
    "projAddr"   => { street_address: "1225 Powell St.", city: "Emeryville", state: "CA", post_code: "94608"}
  }

]

@projects_list.each do |model| 
  begin
    @company = Company.create!( model["company"] )
    @company.addresses.create!( model["address"] )
    @company.identifiers.create!( model["identifier"] )
    puts @company.name + " -- Created."
  rescue
    puts "rescue model: #{model.inspect}"
    puts model["company"][:name]
    @company = Company.where( "name = ?", model["company"][:name])
    @company = @company[0]
  end
  @project = @company.projects.create!( model["project"])
  @project.addresses.create!( model["projAddr"])
  @projmgr = @company.people.first
  puts "#{model} -- Created."
end





#
# W R A P U P
#
puts "\n\nLICENSEE: \t#{@licensee}"
puts "Addresses:    \t#{Address.count.to_s}"
puts "Certificates: \t#{Certificate.count.to_s}"
puts "Cert:         \t#{Cert.count.to_s}"
puts "Companies:    \t#{Company.count.to_s}"
puts "Conditions:   \t#{Condition.count.to_s}"
puts "Dockets:      \t#{Docket.count.to_s}"
puts "Engagements:  \t#{Engagement.count.to_s}"
puts "Equipment:    \t#{Equipment.count.to_s}"
puts "Identifiers:  \t#{Identifier.count.to_s}"
puts "Jobs:         \t#{Job.count.to_s}"
puts "People:       \t#{Person.count.to_s}"
puts "Projects:     \t#{Project.count.to_s}"
puts "Quotes:       \t#{Quote.count.to_s}"
puts "Roles:        \t#{Role.count.to_s}"
puts "Schedules:    \t#{Schedule.count.to_s}"
puts "Solutions:    \t#{Solution.count.to_s}"
puts "Tips:         \t#{Tip.count.to_s}"
puts "Users:        \t#{AdminUser.count.to_s}"
puts "\n\n --Done"
