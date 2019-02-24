ActiveAdmin.register Company do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :credit_terms, :PO_required, :active, :url
=begin
    t.string "name", default: "", null: false
    t.integer "credit_terms", default: 30, null: false
    t.boolean "PO_required", default: false, null: false
    t.boolean "active", default: true, null: false
    t.string "bookkeeping_number", default: "00000", null: false
    t.string "line_of_business", default: "", null: false
    t.string "url", default: "", null: false
    t.boolean "license", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=end
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

  before_action :check_permissions, :only => [:new, :create, :cancel]  
  
end #companies.rb
