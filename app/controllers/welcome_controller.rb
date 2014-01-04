class WelcomeController < ApplicationController
  def index
    @events = Event.all
    @events_searched = Event.search(params[:search])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
