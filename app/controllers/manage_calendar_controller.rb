class ManageCalendarController < ApplicationController
  def index
    @days = Day.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @days }
    end
  end

  def new
    @day = Day.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @day }
    end
  end

  def edit
    @day = Day.find(params[:day_id])
  end

  def update
    @day = Day.find(params[:day_id])
    respond_to do |format|
      if @day.update_attributes(params[:day])
        format.html { redirect_to @day, notice: 'Day was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @day = Day.new(params[:day])
    respond_to do |format|
      if @day.save
        format.html { redirect_to @day, notice: 'day was successfully created.' }
        format.json { render json: @day, status: :created, location: @day }
      else
        format.html { render action: "new" }
        format.json { render json: @day.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @day = Day.find(params[:day_id])
    respond_to do |format|
      format.html { redirect_to days_url }
      format.json { head :no_content }
    end
  end
end
