#
=begin
# Roles and Users
#

#
# R O L E S
#
roles_list = %w[ admin bookeeper driver management operations sales superadmin visitor]
roles_list.each do |name|
  
  Role.find_or_create_by(name: name)

end
=end
