class InterviewsController < ApplicationController
# POST /interviews
# POST /interviews.json

  attr_accessor( :interview_slots )

  def index
    @interviews = Interview.all
  end

  def show
    @interview = Interview.find_by(id: params[:id])
    if @interview.nil?
      @interview = Interview.all
      flash.now[:alert] = "Interview not found"
      render action: 'index'
    end
  end

  def new
    @interview = Interview.new
  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def create
    @interview = Interview.create(interview_parameters)

    @interview_slot = InterviewSlot.find(interview_slots_parameters[:interview_id])
    @interview_slot.update_attributes(interview_slots_parameters)

    UserMailer.welcome_email(@interview)

    redirect_to new_interview_path
  end

  def update_interview_slot(id, attributes, values)
    @interview_slot = InterviewSlot.find(id)
    @interview_slot.update_attribute(attributes, values)
  end

  def update
    @interview = Interview.find(params[:id])
    @interview.update(interview_parameters)

    redirect_to interviews_path
  end

  def destroy
  end

  private
  def interview_parameters
    params.require(:interview).permit(:name, :lastName, :email,
                                      :phoneNumber, :interviewTime, :interviewField, :message, :interviewStatus, :interviewID_id)
  end

  def interview_slots_parameters
    params.require(:interview_slot).permit(:nineAM, :nine30AM, :tenAM, :ten30AM,
                                             :elevenAM, :eleven30AM, :NOON, :twelve30PM, :onePM, :interview_id)
  end
end
