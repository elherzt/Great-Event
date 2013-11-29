class EventsController < ApplicationController
  before_action :authenticate_user!, :except => [:show]
  respond_to :html
  expose(:user) { User.find(params[:user_id]) }

  expose(:events) do 
    user.events.where(params.except(:action, :controller, :format, :utf8, :commit, :authenticity_token, :user_id))
  end

  expose(:event, attributes: :event_params)
  
  def create
    if event.save
      redirect_to user_event_path(id: event.id)
    else
      redirect_to "new"
    end
  end

  def destroy 
    event = Event.find(params[:id])
    event.destroy
    redirect_to user
  end

  def update
    event = Event.find(params[:id])
    event.update_attributes(event_params)
    if event.save
      redirect_to user_event_path(id: event.id)
    else
      redirect_to "edit"
    end
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :poster,
      :start_date,
      :end_date,
      :place,
      :cost,
      :hour,
      :requirements,
      :notes,
      :user_id
    )
  end
end
