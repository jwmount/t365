# http://pivotallabs.com/rails-4-upgrade/

T365::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  
    # Generate all routes in Admin namespace
  ActiveAdmin.routes(self)
  

  #get 'admin_users/index' => 'company#index'
  # root :to => "admin/dashboard#index"    # better, but see line active_admin.rb:124

end #routes