
# Pick up personal identifiers not captured so far.  These people exist already.
personal_identifiers_list = [
  {first_name: "Kelly", last_name: "Kolander", name: "email", value: "pat@osisoft.com"},
  {first_name: "Ben", last_name: "Rodrigues Jr.", name: "email", value: "jpetersen@petersendean.com"},
  {first_name: "Michael", last_name: "Hester", name: "email", value: "pres@mandhcorp.com"},
  {first_name: "Cynthia", last_name: "Liu", name: "email", value: "cindy.liu@errg.com"},
  {first_name: "Karla", last_name: "Deshon", name: "email", value: "karla@paradigmgc.com"}
]
personal_identifiers_list.each do |model|
 # puts
  @people = Person.where( "first_name = ? AND last_name = ?", model[:first_name], model[:last_name] )
  puts "*-*-*-*-* WARNING:  Person not found: #{model}" if @people.empty?
  @people.each do |person| 
    person.identifiers.find_or_create_by( name: model[:name], value: model[:value], rank: person.identifiers.count + 1 )
    puts "#{@person} -- CREATED"
  end
end

