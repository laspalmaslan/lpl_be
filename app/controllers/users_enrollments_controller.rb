# coding: UTF-8
class UsersEnrollmentsController < ApplicationController
  def index
  end

  def new
    @enrollment = Enrollment.new
    @enrollment.build_clan

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  def create
    @enrollment = Enrollment.new(params[:enrollment])
    @enrollment.etype = Etype.find_by_name('LAN')

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to u_enrollments_path, notice: 'Ya estas inscrito. Mira tu correo (Já casi, eres admin a ti ni agua).' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end


  # game methods
  def new_game
    @enrollment = Enrollment.new
    @enrollment.build_clan
  end

  def create_game
    @enrollment = Enrollment.new(params[:enrollment])
    @enrollment.etype = Etype.find_by_name('Consolas')

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to u_enrollments_path, notice: 'Inscripción realizada con éxito.' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end
end
