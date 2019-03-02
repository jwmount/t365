ActiveAdmin.register Person do

  #actions :all # , :except => [:destroy]
  #menu :parent => "Admin", :if => lambda{|tabs_renderer|
  #  controller.current_ability.can?(:manage, Role) &&
  #  !Company.all.empty?
  #}

  menu :parent => "Company"
  belongs_to :company


# Update scopes for rails 5.2.2
=begin
  scope :all,            -> { where(all: true) }
  scope :available,      -> { where(available: true) }
  scope :not_available,  -> { where(available: true) }
  scope :OK_to_contact,  -> { where(OK_to_contact: true) }  
  scope :Do_NOT_contact, -> { where(OK_to_contact: false) }
=begin
  scope :all, :default => true
  scope :available do |people|
    people.where ({available: true})
  end
  scope :not_available do |people|
    people.where ({available: false})
  end
  scope :OK_to_contact do |people|
    people.where ({OK_to_contact: true})
  end
  scope :Do_NOT_contact do |people|
    people.where ({OK_to_contact: false})
  end
=end

#
# I N D E X / L I S T  C O N T E X T
#
  sidebar "Current Choices", only: [:index] do 
    ul
      li link_to "Companies", admin_companies_path
      hr
      li link_to "Dashboard", admin_dashboard_path
  end

#
# C O N T E X T -- Places you can go
#
  sidebar "Current Choices", only: [:show, :edit] do 
    ul
      status_tag('Now you can:')
      hr
      li link_to "Manage people for #{person.company.name}", admin_company_people_path( company )     
      hr
      status_tag('Other things you can do:')
      hr
      li link_to "Visit the Dashboard", admin_dashboard_path
      li link_to "Manage Conditions", admin_conditions_path
      li link_to "Manage Materials", admin_materials_path
      li link_to "Manage Tip Sites", admin_tips_path
  end
  
  index do

    selectable_column
    column :name do |person|
      if person.identifiers.count > 0
        h5 link_to "#{person.display_name + ', ' + person.title}", admin_company_person_path(person.company_id, person.id)
        @identifiers = person.identifiers.order(:rank)
        render @identifiers
      else
        h5 link_to "#{person.display_name}", admin_company_person_path(person.company_id, person.id)
      end
    end

    column :title
    
    column :available do |person|
      status_tag (person.available ? "YES" : "No"), (person.available ? :ok : :error)
    end

    column :OK_to_contact  do |person|
      status_tag (person.OK_to_contact ? "YES" : "No"), (person.OK_to_contact ? :ok : :error)
    end

    column :active  do |person|
      status_tag (person.active ? "YES" : "No"), (person.active ? :ok : :error)
    end

    column :certs do |person|
      render person.certs
    end
    actions
  end

  form do |f|
    f.semantic_errors *f.object.errors.keys
    #error_panel f

    f.inputs "Person Details" do

      f.input :first_name,
              :hint        => AdminConstants::ADMIN_PERSON_FIRST_NAME_HINT,
              :placeholder => AdminConstants::ADMIN_PERSON_FIRST_NAME_PLACEHOLDER

      f.input :last_name,
              :hint        => AdminConstants::ADMIN_PERSON_LAST_NAME_HINT,
              :placeholder => AdminConstants::ADMIN_PERSON_LAST_NAME_PLACEHOLDER
      
      f.input :title,
              :hint        => AdminConstants::ADMIN_PERSON_TITLE_HINT,
              :placeholder => AdminConstants::ADMIN_PERSON_TITLE_PLACEHOLDER 
      
      f.input :active, 
              :as => :radio
    end

    f.inputs "Availability" do
      f.input :available, 
              :as => :radio
      f.input :available_on, 
              :as => :date_picker
    end

    f.inputs do
      f.has_many :addresses do |f|
        f.input :street_address
        f.input :city
        f.input :state
        f.input :post_code
        f.input :map_reference
      end
    end

    f.inputs do
      f.has_many :identifiers do |f|
        f.input :name, 
                :collection => AdminConstants::ADMIN_IDENTIFIER_NAME_COLLECTION,
                :label      => AdminConstants::ADMIN_IDENTIFIER_NAME_LABEL,
                :hint       => AdminConstants::ADMIN_IDENTIFIER_NAME_HINT

        f.input :value,
                :label       => AdminConstants::ADMIN_IDENTIFIER_VALUE_LABEL,
                :hint        => AdminConstants::ADMIN_IDENTIFIER_VALUE_HINT,
                :placeholder => AdminConstants:: ADMIN_IDENTIFIER_VALUE_PLACEHOLDER

        f.input :rank, 
                :collection => %w[1 2 3 4 5 6 7 8 9],
                :label       => AdminConstants::ADMIN_IDENTIFIER_RANK_LABEL,
                :hint        => AdminConstants::ADMIN_IDENTIFIER_RANK_HINT,
                :placeholder => AdminConstants::ADMIN_IDENTIFIER_RANK_PLACEHOLDER 
      end
    end

    f.inputs do
      f.has_many :certs, :heading => 'Certifications' do |cf|
        
        cf.input :certificate,
                :collection       => Certificate.where({:for_person => true}),
                :include_blank    => false

        cf.input :expires_on, 
                :as               => :date_picker,
                :hint             => AdminConstants::ADMIN_CERT_EXPIRES_ON_HINT

        cf.input :serial_number, 
                :hint             => AdminConstants::ADMIN_CERT_SERIAL_NUMBER_HINT

        cf.input :permanent

        cf.input :active
      end
    end
    f.actions
  end


  show :title => 'Personal Details' do
    h3 person.full_name
    panel "Context" do
      attributes_table_for(person) do
        row :company
        row :title
        row ("Address") { render person.addresses }
        row ("Rollodex") { render person.identifiers }
        row ("active") { status_tag (person.active ? "YES" : "No"), (person.active ? :ok : :error) }
      end
    end

    panel 'Availability' do
      attributes_table_for(person) do
        row("Available") { status_tag (person.available ? "YES" : "No"), (person.available ? :ok : :error) }
        unless person.available
          row( "When #{person.display_name} will be available") {person.available_on}
        end
        row("OK_to_contact") { status_tag (person.OK_to_contact ? "YES" : "No"), (person.OK_to_contact ? :ok : :error) }
      end
    end

    # Cert is polymorphic
    # certifiable_id == who owns it, e.g. Person, Company, Vehicle...
    # certificate_id == what is it, e.g. Driving License, Birth Certificate...
    # Each instance makes the Certificate specific, for example 'this' vehicle's insurance policy
    panel 'Certifications & Qualifications' do
      attributes_table_for(person) do
        unless person.certs.any?
          h4 'None'
        else
          certs = person.certs.all.each do |cert|
            row("#{cert.certificate.name}") {  cert.certificate.description +
            (cert.active ? ' Current '  : ' Lapsed or pending').to_s + ', ' +
            (cert.permanent ? ' Permanent ' : ' Temporary ').to_s + ','     +  
            ' Serial_number: ' + cert.serial_number }
          end
        end
      end
    end

    active_admin_comments
  end

  batch_action :enhance do |selection|
      # Do some deleting...
      selection.destroy
  end

  batch_action :destroy, :confirm => "really really sure ???you want to delete all of these?" do |selection|
      # Do some deleting...
      selection.destroy
  end
end



=begin #***
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
  permit_params :password, :email, :first_name, :last_name, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
=end