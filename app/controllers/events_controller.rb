class EventsController < ApplicationController
  def index
    session[:user_id] = 4
    @current_user = User.find(session[:user_id])

    @local_events = Event.where(state: @current_user.state)
    @outside_events = Event.where.not(state: @current_user.state)
  end

  def show
    @event = Event.find(params[:id])
  end
end
