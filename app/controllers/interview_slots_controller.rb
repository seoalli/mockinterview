class InterviewSlotsController < ApplicationController

  def index
    @interview_slots = InterviewSlot.all

  end

  def show
    @interview_slot = InterviewSlot.find(params[:id])

  end

  def new
    redirect_to(:action => 'edit')

  end

  def create
    @interview = Interview.new(interview_parameters)
    @interview.save
    render('edit')
  end

  def edit
    @interview_slot = InterviewSlot.find(params[ :id ])
  end

  def update
    @interview_slot = InterviewSlot.find(params[ :id ])
    @interview_slot.update_attributes(interview_slots_parameters)
    respond_to do |format|
      format.js{ render :nothing => true }
    end
  end

  def update_attributes
    @interview_slot = InterviewSlot.find(params[ :id ])
    @interview_slot.update_attributes(interview_slots_parameters)
    respond_to do |format|
      format.js{ render :nothing => true }
    end
  end

  def delete
    @interview_slot = InterviewSlot.find(params[:id])
  end

  def destroy
    InterviewSlot.find(params[ :id ]).destroy
    redirect_to( :action => 'index' )
  end

  private
  def interview_slots_parameters
    params.require( :interview_slot ).permit(:jobType, :nineAM, :nine30AM,
                                             :tenAM, :ten30AM, :elevenAM,
                                             :eleven30AM, :NOON, :twelve30PM, :onePM )
  end

  private
  def interview_parameters
    params.require(:interview).permit(:name, :lastName, :email,
                                      :phoneNumber, :interviewTime, :interviewField, :message, :interviewStatus)
  end

end
