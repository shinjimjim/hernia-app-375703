class Admin::UsersController < ApplicationController
  before_action :if_not_admin
  before_action :set_events, only: [:index, :show, :events]
  before_action :set_user, only: [:show, :events]
    
  def index
    @users = User.all
  end

  def show
  end

  def events
  end


  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_events
    @events = Event.all
  end

  def set_user
    @user = User.find(params[:id])
  end
end
