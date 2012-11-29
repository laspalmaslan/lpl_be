# coding: UTF-8
class EnrollmentsController < ApplicationController
  before_filter :authenticate_admin!
  layout "admin"

  def index
    @enrollments = Enrollment.where(paid_at: nil).order('updated_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @enrollments }
    end
  end

  def show
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/new
  # GET /enrollments/new.json
  def new
    @enrollment = Enrollment.new
    @enrollment.build_clan

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @enrollment }
    end
  end

  # GET /enrollments/1/edit
  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  # POST /enrollments
  # POST /enrollments.json
  def create
    @enrollment = Enrollment.new(params[:enrollment])
    @enrollment.etype = Etype.find_by_name('LAN')

    respond_to do |format|
      if @enrollment.save
        format.html { redirect_to enrollments_path, notice: 'Ya estas inscrito mira tu correo (Já casi, eres admin a ti ni agua).' }
        format.json { render json: @enrollment, status: :created, location: @enrollment }
      else
        format.html { render action: "new" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /enrollments/1
  # PUT /enrollments/1.json
  def update
    @enrollment = Enrollment.find(params[:id])

    respond_to do |format|
      if @enrollment.update_attributes(params[:enrollment])
        format.html { redirect_to enrollments_path, notice: 'Inscripción modificada.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enrollments/1
  # DELETE /enrollments/1.json
  def destroy
    @enrollment = Enrollment.find(params[:id])
    @enrollment.destroy

    respond_to do |format|
      format.html { redirect_to enrollments_url }
      format.json { head :no_content }
    end
  end

  def show_paid
    @enrollments = Enrollment.by_date

    render :show_paid
  end

  def paid
    @enrollment = Enrollment.find(params[:id])
    respond_to do |format|
      if @enrollment.pay
        format.html { redirect_to enrollments_path, notice: 'Inscripción verificada.' }
      else
        format.html { redirect_to enrollments_path, notice: 'Inscripción no verificada, fallo inesperado.' }
      end
    end
  end

  def unpaid
    @enrollment = Enrollment.find(params[:id])
    respond_to do |format|
      if @enrollment.unpay
        format.html { redirect_to enrollments_path, notice: 'Inscripción cancelada.' }
      else
        format.html { redirect_to enrollments_path, notice: 'La cancelación falló.' }
      end
    end
  end
end
