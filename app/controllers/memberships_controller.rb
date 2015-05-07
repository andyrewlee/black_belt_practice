class MembershipsController < ApplicationController
  def create
    Membership.create(user: User.find(session[:user_id]), event: Event.find(params[:event_id]))
    redirect_to '/events'
  end
end
