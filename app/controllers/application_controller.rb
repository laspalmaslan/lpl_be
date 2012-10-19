class ApplicationController < ActionController::Base
  protect_from_forgery


  private
  before_filter :instantiate_controller_name

  def instantiate_controller_name
    @current_controller = controller_name
  end
end
