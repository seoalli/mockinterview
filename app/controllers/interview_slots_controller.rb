class InterviewSlotsController < ApplicationController
  belongs_to :interview


def index
  @interview_slots = InterviewSlot.all

end

def show
  @interview_slot = InterviewSlot.find_by(id: params[:id])
  p @interview_slot
  if @interview_slot.nil?
      @interview_slot = InterviewSlot.all
      flash.now[:alert]= "your interview_slot table was not found"
    render 'index'
  end
end

def new
 @interview_slot = InterviewSlot.new
end

def create
  @interview = Interview.find(params[:interview_id])
  #@interview_slot = @interview.interview_slots.create(interview_slots_parameters)
  @interview_slot = InterviewSlot.new(interview_slots_parameters)
  @interview_slot.save
    #redirect_to(:action => 'index')
 # else
  #  render('new')
  #end
end

def edit
  #@interview_slot = InterviewSlot.find(params[ :id ])
  @interview_slot = InterviewSlot.all

end

def update
 @interview_slot = InterviewSlot.find(params[ :id ])
 #@interview_slots = InterviewSlot.all
 #@interview_slot.update_attributes(interview_slot_params) #_attributes(interview_slot_params)
 #S@interview_slots.save()
    #redirect_to welcome_schedule_path
    #(:action => 'show', :id => @interview_slot.id)

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
  params.require( :interview_slot ).permit( :jobType, :nineAM, :nine30AM,
                                               :tenAM, :ten30AM, :elevenAM,
                                               :eleven30AM, :NOON, :twelve30PM, :onePM )
end

end
