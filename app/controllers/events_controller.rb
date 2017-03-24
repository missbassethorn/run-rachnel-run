class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)

    @event.save
    redirect_to events_url
  end

  private
  def event_params
    params.require(:event).permit(:name, :event_type, :distance, :url, :notes, :event_at)
  end
end
