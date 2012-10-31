class ApplicationController < ActionController::Base
  protect_from_forgery
  layout :layout_by_resource

  protected

  def layout_by_resource
    if devise_controller? && resource_name == :admin
      "one_box"
    else
      "application"
    end
  end

  private
  before_filter :instantiate_controller_name, :instantiate_action_name

  def instantiate_controller_name
    @current_controller = controller_name
  end
  def instantiate_action_name
    @current_action = action_name
  end
end
