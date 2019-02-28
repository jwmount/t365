# 
# RUNS LAST in series of seed_* tasks.
#
# rake db:demo 
#
# A useful Example:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# [TODO] Could make this into a new task that just gives us a summary, e.g. rake db:summary



# rake tasks can be executied or invoked, they can be ordered.
# https://medium.com/@sampatbadhe/rake-task-invoke-or-execute-419cd689c3bd

namespace :tips do
  Rake::Task['load'].invoke
  Rake::Task['all'].invoke
end

namespace :certificates do
  Rake::Task['all'].invoke
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
