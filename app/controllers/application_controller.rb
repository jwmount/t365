
def error_panel( f )
  if f.object.errors.size >= 1  
    msg = "There was 1 error." if f.object.errors.size == 1
    msg = "There were #{f.object.errors.size} errors." if f.object.errors.size > 1
    flash[:error] = f.object.class.name + " could not be saved.  " + msg
    f.inputs "Error List" do
      f.object.errors.full_messages.join(' .... ')
    end
  end
end

# Add method to String and use to create initials, e.g. .first_name.initial
class String
  def initial
    i = self[0,1] ||= '-'
  end
end


class ApplicationController < ActionController::Base

  protect_from_forgery

 def access_denied(exception)
    Rails.logger.error "access denied! '#{exception.message}'"
    redirect_to new_admin_admin_user_path, :alert => exception.message
    #redirect_to :root
  end

=begin  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = exception.message
    redirect_to root_url
  end
=end

  def current_user
    current_admin_user
  end

  def current_ability
    @current_ability ||= Ability.new(current_admin_user)
  end

  def index
  end

end


class ActiveAdmin::Views::Pages::Base < Arbre::HTML::Document

  private

end


#
#  M O D U L E 
#
module ActiveAdmin

  class Resource
    module ActionItems

      alias_method :original_add_default_action_items, :add_default_action_items unless method_defined?(:original_add_default_action_items)

      
      private

      def add_default_action_items
        add_action_item :except => [:new, :show] do
          if controller.current_ability.can?(:create, active_admin_config.resource_name)
            if controller.action_methods.include?('new')
              link_to(I18n.t('active_admin.new_model', :model => active_admin_config.resource_name), new_resource_path)
            end
          end
        end

        add_action_item :only => :show do
          # puts active_admin_config.resource
          # puts "controller.current_ability.can?(:update, active_admin_config.resource_name)"
          # puts controller.current_ability.can?(:update, active_admin_config.resource_name)
          if controller.current_ability.can?(:update, resource)
            if controller.action_methods.include?('edit')
              link_to(I18n.t('active_admin.edit_model', :model => active_admin_config.resource_name), edit_resource_path(resource))
            end
          end
        end

        # Destroy link on show
        add_action_item :only => :show do
          if controller.current_ability.can?(:destroy, resource)
            if controller.action_methods.include?("destroy")
                path = resource_path(resource)
              link_to(I18n.t('active_admin.delete_model', :model => active_admin_config.resource_name),
                path,
                # Rails 4.0.0 :confirm deprecated
                #:method => :delete, :confirm => I18n.t('active_admin.delete_confirmation'))
                # Rails 4.1 version here OK
                :method => :delete, data: { confirm: I18n.t('active_admin.delete_confirmation') } )
            end
          end
        end
      end

    end
  end

end



ActiveAdmin::Views::Pages::Base.class_eval do

  private

  def build_footer
    div :id => "footer" do
      footer = "#{ENV['LICENSEE']}(Licensee), #{link_to("Roster 365", "http://roster365.herokuapp.com", :target => "_blank")} #{ENV['VERSION']};".html_safe
      footer << "  Powered by #{link_to("Active Admin", "http://www.activeadmin.info")} #{ActiveAdmin::VERSION}".html_safe
      para footer
    end
  end

end
