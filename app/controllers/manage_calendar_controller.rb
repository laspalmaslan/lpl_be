class ManageCalendarController < ApplicationController
  layout "admin"
  before_filter :authenticate_admin!
  def index
    @days = Day.all
  end

  def new
    @day = Day.new
    @day.events.build
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    @day = Day.find(params[:id])
    respond_to do |format|
      if @day.update_attributes(params[:day])
        format.html { redirect_to manage_calendars_path, notice: 'Day was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def create
    @day = Day.new(params[:day])
    respond_to do |format|
      if @day.save
        format.html { redirect_to manage_calendars_path, notice: 'day was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy
    @day = Day.find(params[:id])
    respond_to do |format|
      if @day.destroy
        format.html{ redirect_to manage_calendars_path, notice: 'Day deleted succesfully'}
      else
        format.html{ redirect_to manage_calendars_path, notice: 'Day not deleted'}
      end
    end
  end
end
