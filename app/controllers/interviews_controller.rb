class InterviewsController < ApplicationController
  #has_many :interview_slot

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
    @interview =Interview.new
    @interview_slot = InterviewSlot.new


  end

  def edit
    @interview = Interview.find(params[:id])
  end

  def create
    @interview = Interview.new(interview_parameters)
    @interview.save
    @interview_slot = InterviewSlot.new
    @interview_slot.save
    #@interview_slot = InterviewSlot.all
   # @interview_slot = InterviewSlot.find(params[ :id ])
    #@interview_slot = InterviewSlot.all
    #@interview_slot.update_attributes(interview_slots_parameters)
  #_attributes(interview_slot_params)
   # @interview_slots.update(interview_slots_parameters)


      redirect_to welcome_schedule_path
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
                                      :phoneNumber, :interviewTime, :interviewField, :message, :interviewStatus)
  end

  def interview_slots_parameters
    params.require(:interview_slot).permit(:nineAM, :nine30AM, :tenAM, :ten30AM,
                                             :elevenAM, :eleven30AM, :NOON, :twelve30PM, :onePM)
  end
end
