#
# Rioles and Users
#

#
# R O L E S
#
roles_list = %w[ admin bookeeper driver management operations sales superadmin visitor]
roles_list.each do |role|
  Role.find_or_create_by(name: role)
end

#
# U S E R S
# Create users (roles not implemented yet, MUST be chosen from roles_list)
# Emails created with user credentials
#

@user_list = [
  ['bookeeper@T365.com', 'bookeeper', 2],
  ['driver@T365.com', 'driver', 3],
  ['manager@T365.com', 'manager', 4],
  ['dispatcher@T365.com', "dispatcher", 5],
  ['Sales@T365.com', 'T365', 6],
  ['john@T365.com', 'rT365', 7],
  ['visitor@T365.com', 'visitor', 8]
  ]

@user_list.each do |email, password, role|  
  Rails::logger.info( "*-*-*-*-* About to Create user #{email}, pswd: #{password.slice(0..2)}, role: #{role}" )
  user = AdminUser.where( email: email )
  if user[0] == nil
    AdminUser.find_or_create_by( email: email, encrypted_password: password, encrypted_password_token: password, role_id: role)
  end
  Rails::logger.info( "*-*-*-*-* Created user #{email}, pswd: #{password.slice(0..2)}, role: #{role}" )
end

puts "#{AdminUser.count} Users loaded"
