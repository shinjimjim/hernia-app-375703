class Admin::EventsController < ApplicationController
  before_action :if_not_admin

  def show
    @events = Event.all
    @user = User.find(params[:user_id])
    @event = @user.events.find(params[:id])
  end

  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

end
