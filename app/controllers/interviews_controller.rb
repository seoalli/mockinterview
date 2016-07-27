class InterviewsController < ApplicationController

  attr_accessor(:interview_slots)
  attr_accessor(:user)

  def index
    raise ActionController::RoutingError.new('Not Found') unless params[:password] == "whateveryouwant"
    @interviews = Interview.all
  end

  def show
    raise ActionController::RoutingError.new('Not Found') unless params[:password] == "whateveryouwant"
    @interview = Interview.find_by(id: params[:id])
    if @interview.nil?
      @interview = Interview.all
      flash.now[:alert] = "Interview not found"
     redirect_to schedule_path
    end
    redirect_to schedule_path
  end

  def new
    @interview = Interview.new
  end

  def create
    @interview = Interview.create(interview_parameters)
    @interview_slot = InterviewSlot.find(interview_slots_parameters[:interview_id])
    @interview_slot.update_attributes( interview_slots_parameters[:interview_time_slot].to_sym=> "Booked", interview_slots_parameters[:interviewID].to_sym=> interview_slots_parameters[:interview_id])

    if @interview_slot.save! and @interview.save
      redirect_to interviews_new_path
      UserMailer.welcome_email(@interview).deliver_now
    else
      flash.now[:alert] = "Slot has already been Booked!"
    end
    session.clear
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def update
    @interview = Interview.find(params[:id])
    @interview.update(interview_parameters)

    redirect_to interviews_new_path
  end

  def destroy

    @interview = Interview.find_by(id: params[:id])
    @interview_slot = InterviewSlot.find(@interview.slotID)
    @interview_slot.update_attribute(@interview.slotTimeDescription.to_sym, "Available")
    @interview.destroy
    redirect_to interviews_new_path

  end

  def cancel
    @interview = Interview.find_by(:email=> params[:interview][:email])
    @interview_slot = InterviewSlot.find(@interview.slotID)
    @interview_slot.update_attribute(@interview.slotTimeDescription.to_sym, "Available")
    @interview.destroy
    redirect_to interviews_new_path
  end

  def cancelInterview
    @interview = @interviews.find_by(:email=> params[:interview][:email])
  end

  private
  def interview_parameters
    params.require(:interview).permit(:name, :lastName, :email, :phoneNumber, :interviewTime, :interviewField,
                                      :interviewStatus, :slotTimeDescription, :slotID, :cancelEmail)
  end

  def interview_slots_parameters
    params.require(:interview_slot).permit(:interview_id, :interview_time_slot, :interviewID)
  end
end
