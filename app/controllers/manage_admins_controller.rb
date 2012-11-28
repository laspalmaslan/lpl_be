# coding: UTF-8
class ManageAdminsController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"
  def activations
    @admins_actived = Admin.where(approved: true)
    @admins_deactived = Admin.where(approved: false)
  end

  def activate
    @admin = Admin.find(params[:id])
    respond_to do |format|
      if @admin.activate
        format.html {redirect_to admins_list_path(), notice: "Admin activado"}
      else
        format.html {redirect_to admins_list_path(), notice: "Lo siento, algo fue mal"}
      end
    end
  end

  def deactivate
    @admin = Admin.find(params[:id])
    respond_to do |format|
      if @admin.deactivate
        format.html {redirect_to admins_list_path(), notice: "Admin desactivado"}
      else
        format.html {redirect_to admins_list_path(), notice: "Lo siento, algo fue mal"}
      end
    end
  end
end
