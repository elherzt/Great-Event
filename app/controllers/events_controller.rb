class EventsController < ApplicationController
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

  def chronicle

  end
  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
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
