class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @events = current_user.events
    @users = User.all
  end

  def new
    @event = current_user.events.new
  end

  def create
    @event = current_user.events.new(event_params)
    if @event.save
      redirect_to root_path, notice: "登録しました"
    else
      render :new
    end
  end

  def show
    redirect_to action: :index unless current_user.id == @event.user_id
  end
  
  def edit
    redirect_to action: :index unless current_user.id == @event.user_id
  end
  
  def update
    if @event.update(event_params)
      redirect_to root_path, notice: "編集しました"
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @event.user_id
      @event.destroy
    end
    redirect_to root_path, notice:"削除しました"
  end


  private

  def event_params
    params.require(:event).permit(:start_time, :pain_id, :stretch_id, :training_id, :posture_id, :meal_id, :motion_id, :smoking_id, :postscript).merge(user_id: current_user.id)
  end

  def set_event
    @event = Event.find(params[:id])
  end

end
