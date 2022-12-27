class SchedulesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @schedule = Schedule.new
    @schedule.events.new
  end

  def create
    @schedule = Schedule.new(schedule_params)

    if @schedule.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def schedule_params
    params.require(:schedule).permit(
      :schedule_title, :assumed_number_people, 
      events_attributes: [:id, :start_time, :end_time, :event_title, 
                          :image, :price, :store, :comment, :_destroy]
    )
  end
end
