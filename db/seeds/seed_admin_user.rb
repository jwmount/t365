#
# I N I T I A L  A D M I N  U S E R  D E F A U L T.   I N I T I A L  A D M I N  U S E R  D E F A U L T.  
#
AdminUser.find_or_create_by(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


#
# I N I T I A L  A D M I N  U S E R S
#
AdminUser.find_or_create_by(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

@user_list = [
  ['bookeeper@T365.com', 'bookeeper', 2],
  ['driver@T365.com', 'driver', 3],
  ['manager@T365.com', 'manager', 4],
  ['dispatcher@T365.com', "dispatcher", 5],
  ['Sales@T365.com', 'T365', 6],
  ['john@T365.com', 'T365', 7],
  ['visitor@T365.com', 'visitor', 8]
  ]

@user_list.each do |email, password|  
  
  user = AdminUser.where( email: email )
  if user[0] == nil
    AdminUser.find_or_create_by( email: email, encrypted_password: password, encrypted_password_token: password)
  end
  
end

puts "#{AdminUser.count} Users loaded"
