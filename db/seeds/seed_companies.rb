#
# D I R E C T O R Y   C O M P A N I E S
# 
# Format here works well for company listings in Directories.   
# Array of hashes, each contains four hashes "company", "address", "person", and "identifier".
# First company is our licensee, this admittedly fragile rule, is/was? used next to determine this status.
# Note:  hash values cannot be duplicates so cannot have two "Identifiers" for example.
#

# TODO -- Create a Licensee Setup sequence better than this static approach.
# Note that here the Rep's name is 'Account Representative' and this needs to be edited to make any 
# sense once the account gets used by someone.
#
# CONVENTION:  put Licensee company 1st.  For now.
# Show the attributes here just to make them easy to see.
#
  @licensee = "Licensee"
  @lob = "Mudslingers"
  @url = "www.mudslingersLLC"

  @company_list = [

  { "company"    => { licensee: true, 
                      name: @licensee, line_of_business: @lob, url: @url},
    "address"    => { street_address: "t.b.d.", city: "Dixon", state: "CA", post_code: ""},
    "person"     => { first_name: "Account", last_name: "Representative", title: "Rep"},
    "identifier" => { name: "Office", value: "415 555-1212"}
    }, 
# COMPANIES IN MARKET AREA
  { "company"    => { name: "1st Logistics", line_of_business: "Over-the-road transportation services", url: "www.truckcompaniesin.com/dot/1175905/"},
    "address"    => { street_address: "2001 Meyer Way", city: "Fairfield", state: "CA", post_code: "94533" },
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "(707) 853-6712"}
    }, 
  { "company"    => { name: "American Debris Box Service Inc.", line_of_business: "Containers delivered and removed", url: "americandebrisbox.com/"},
    "address"    => { street_address: "PO Box 3187", city: "Half Moon Bay", state: "CA", post_code: "94019" },
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "866-332-7471"}
    }, 
  { "company"    => { name: "Blue Line Transfer", line_of_business: "Cartage, waste removal & recycling service", url: ""},
    "address"    => { street_address: "500 E. James Court", city: "South San Francisco", state: "CA", post_code: "94080"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "t.b.d."},
    "tip"        => { name: "Blue Line Transfer", fee: 15.00, fire_ant_risk_level: "none"}
    }, 
  { "company"    => { name: "Lawson Drayage, Inc.", line_of_business: "Machinery Moving, Rigging, & Heavy Transportation for any Industry",
                      url: "lawsoninc.com"},
    "address"    => { street_address: "3402 Enterprise Avenue", city: "Hayward", state: "CA", post_code: "94545"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "510-785-5100 "}
    }, 
  { "company"    => { name: "Waste Management, Inc.", line_of_business: "Waste Disposal & Removal Service", url: "www.wm.com"},
    "address"    => {},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "t.b.d."}
    }, 
  { "company"    => { name: "Reliable Crane & Rigging", line_of_business: "Carting, Hoist Service & Rental, Machinery Moving & Erecting Service", url: " www.reliablecrane.com"},
    "address"    => {},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "800 222-7263"}
    }, 
  { "company"    => { name: "Foothill Disposal Co. Inc.", line_of_business: "Cartage Service", url: "www.norcalwaste.com"},
    "address"    => {},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "t.b.d."}
    }, 
  { "company"    => { name: "BWRS", line_of_business: "Debris box, compactors, recycling", url: "www.bwrs.com/"},
    "address"    => {},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "t.b.d."}
    }, 
  { "company"    => { name: "Pleasanton Garbage Serivice, Inc.", line_of_business: "Waste Transport Service", url: "www.pleasantongarbageservices.com"},
    "address"    => { street_address: "3110 Busch Road", city: "Pleasanton", state: "CA", post_code: "94566"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "(925) 846-2042"}
    }, 
  { "company"    => { name: "Dillard Trucking, Inc.", line_of_business: "Hazardous Waste Transport", url: "dillardenv.com"},
    "address"    => { street_address: "3120 Camino Diablo Road, PO Box 579", city: "Byron", state: "CA", post_code: "94514"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "925 634-6850"}
    }, 
  { "company"    => { name: "Gan-Trans Ltd.", line_of_business: "Cartage Services (not local)", url: ""},
    "address"    => { street_address: "800 Carden St.", city: "San Leandro", state: "CA", post_code: "94577"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "510 357-3100"}
    }, 
  { "company"    => { name: "Precision Crane Service", line_of_business: "Crane & Freight Carrier Service", url: ""},
    "address"    => { street_address: "", city: "San Rafael", state: "CA", post_code: "94901"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "415 457-0702"}
    }, 
  { "company"    => { name: "East Bay Sanitary Co., Inc.", line_of_business: "Cartage, Waste Disposal & Removing Service", url: "www.ebsan.com"},
    "address"    => { street_address: "PO Box 1316, 1432 Kearny St.", city: "El Cerrito", state: "CA", post_code: "94530"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "510.237.4321"}
    }, 
  { "company"    => { name: "Vallejo Garbage Service", line_of_business: "Cartages Service", url: ""},
    "address"    => { street_address: "2021 Broadway St.", city: "Vallejo", state: "CA", post_code: "94589"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "707 552-3110"}
    }, 
  { "company"    => { name: "Fred Haines & Company", line_of_business: "Cartage Service", url: "hainesinc.com"},
    "address"    => { street_address: "40434 Brickyard Dr", city: "Madera", state: "CA", post_code: "93636"},
    "person"     => { first_name: "Jason", last_name: "Haines", title: "Dispatcher"},
    "identifier" => { name: "Main Office", value: "(559) 451-0100"}
    }, 
  { "company"    => { name: "Specialty Solid Waste & Recycling", line_of_business: "Waste Handling, Cartage, Waste Disposal Service", url: "www.sswr.com"},
    "address"    => { street_address: "3355 Thomas Road", city: "Santa Clara", state: "CA", post_code: "95054"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "408.565.9900"}
    }, 
  { "company"    => { name: "Tight Access Excavation", line_of_business: "Residential - Commercial", url: ""},
    "address"    => { street_address: "8140 SE 51ST AVE", city: "Portland", state: "OR", post_code: "97206"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "(503) 287-4836"}
    }, 
  { "company"    => { name: "Hazel Construction", line_of_business: "Residential Construction", url: "hazel-construction.hub.biz/"},
    "address"    => { street_address: "70 Greenfield Ave.", city: "San Anselmo", state: "CA", post_code: ""},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "415 457-2086"}
    }, 
  { "company"    => { name: "TMT Industries", line_of_business: "Residential Construction", url: ""},
    "address"    => { street_address: "14859 Whittram Ave.", city: "Fontana", state: "CA", post_code: "92335"},
    "person"     => { last_name: "t.b.d."},
    "identifier" => { name: "Main Office", value: "t.b.d."}
    }, 
# East Bay Book of Lists
  { "company"    => { name: "O.C. Jones & Sons Inc.", line_of_business:  "Heavy civil construction", url: "www.ocjones.com" },
    "address"    => { street_address: "1520 Fourth St.", city: "Berkeley", state: "CA", post_code: "94710" },
    "person"     => { first_name: "Kelly", last_name: "Kolander", title: "CEO" },
    "identifier" => { name: "Main Company", value: "510 526-3424", rank: 1 }
  },
  { "company"    => { name: "Bay Cities Paving & Grading Inc.", line_of_business:   "General engineering, heavy construction", url: "NR"},
    "address"    => { street_address: "5029 Forni Drive", city: "Concord", state: "CA", post_code: "94520" },
    "person"     => { first_name: "Ben", last_name: "Rodrigues Jr.", title: "President" },
    "identifier" => { name: "Main Company", value: "925 687-6666", rank: 1 }
  },
  { "company"    => { name: "S&S Supplies and Solutions", line_of_business: "Industrial supplies and services", url: "www.supliesandsolutions.com"},
    "address"    => { street_address: "501 Shell Ave", city: "Martinez", state: "CA", post_code: "94553"},
    "person"     => { first_name: "Tracy", last_name: "Tomkovicz", title: "CEO" },
    "identifier" => { name: "Main Company", value: "925 687-6666", rank: 1 }
  },
  { "company"    => { name: "McGuire and Hester", line_of_business: "Heavy civi engineering and construction services", url: "www.mandhcorp.com"},
    "address"    => { street_address: "9009 Railroad Ave.", city: "San Ramon", state: "CA", post_code: "94583"},
    "person"     => { first_name: "Michael", last_name: "Hester", title: "President"},
    "identifier" => { name: "email", value: "pres@mandhcorp.com", rank: 1}
  },
  { "company"    => { name: "Shames Construction Co. Ltd.", line_of_business: "Commercial general contractor", url: "www.shames.com"},
    "address"    => { street_address: "5826 Brisa St.", city: "Livermore", state: "CA", post_code: "94550"},
    "person"     => { first_name: "Carolyn", last_name: "Shames", title: "President and CEO"},
    "identifier" => { name: "Main Number", value: "925 606-3000"}
  },
  { "company"    => { name: "James E. Roberts - Obayashi Corp.", line_of_business: "General construction", url: "www.robertsobayashi.com"},
    "address"    => { street_address: "20 Oak Court", city: "Danville", state: "CA", post_code: "94526"},
    "person"     => { first_name: "Scott", last_name: "Smith"},
    "identifier" => { name: "Main Number", value: "925 820-0600"}
    },
  { "company"    => { name: "Engineering/Remediation Resources Group Inc.", line_of_business: "Environmental construction and engineering", url: "www.errg.com"},
    "address"    => { street_address: "4585 Pacheco Blvd., Suite 200", city: "Martinez", state: "CA", post_code: "94553"},
    "person"     => { first_name: "Cynthia", last_name: "Liu"},
    "identifier" => { name: "Main Number", value: "925 969-0750"}
  },
  { "company"    => { name: "Paradigm General Contractors", line_of_business: "General contractor", url: "www.paradigmgc.com"},
    "address"    => { street_address: "1017 MacDonald Ave.", city: "Richmond", state: "CA", post_code: "94801"},
    "person"     => { first_name: "Karla", last_name: "Deshon"},
    "identifier" => { name: "Main Number", value: "510-478-1121"}
  }
]

  
  @company_list.each do |model| 
    @company = Company.find_or_create_by( model["company"] )
    @company.addresses.find_or_create_by( model["address"] )

    #Person is Rep (make a method for this [TODO])
    model["person"]["title"] = "Rep" if @company.licensee
    @company.people.find_or_create_by( model["person"] )
    
    #Identifiers
    @company.identifiers.find_or_create_by( model["identifier"] )
    
    #Tips
    @company.tips.find_or_create_by( model["tip"] ) unless model["tip"].nil?
  end

  p "#{Company.count} Companies loaded."






