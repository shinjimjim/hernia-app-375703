class Admin::AdminsController < ApplicationController
  before_action :if_not_admin
  before_action :set_user, only: [:show]
    
  
  private

  def if_not_admin
    redirect_to root_path unless current_user.admin?
  end

  def set_user
    @user = User.find(params[:id])
  end

end
