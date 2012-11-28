class GameEnrollmentsController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"

  def new
    @enrollment = Enrollment.new
    @enrollment.build_clan
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def create
    @enrollment = Enrollment.new(params[:enrollment])
    @enrollment.etype = Etype.find_by_name('Consolas')

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to enrollments_path, notice: 'Inscripción creada con éxito.' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      if @enrollment.update_attributes(params[:enrollment])
        format.html { redirect_to enrollments_path, notice: 'Inscripción actualizada con éxito.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end
end
